package im.actor.model.crypto.bouncycastle;

import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.encodings.OAEPEncoding;
import org.bouncycastle.crypto.engines.RSAEngine;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.RSAKeyParameters;

import im.actor.model.crypto.RsaCipher;
import im.actor.model.crypto.encoding.PKS8RsaPrivateKey;

/**
 * Created by ex3ndr on 07.03.15.
 */
public class BcRsaCipher extends BcRsaEncryptCipher implements RsaCipher {
    private AsymmetricBlockCipher cipher;

    public BcRsaCipher(byte[] publicKey, byte[] privateKey) {
        super(publicKey);

        try {
            PKS8RsaPrivateKey pks8RsaPrivateKey = new PKS8RsaPrivateKey(privateKey);
            AsymmetricKeyParameter keyParameter = new RSAKeyParameters(true, pks8RsaPrivateKey.getModulus(),
                    pks8RsaPrivateKey.getExponent());
            cipher = new OAEPEncoding(new RSAEngine(), new SHA1Digest());
            cipher.init(false, keyParameter);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public synchronized byte[] decrypt(byte[] sourceData) {
        if (cipher == null) {
            return null;
        }

        try {
            return cipher.processBlock(sourceData, 0, sourceData.length);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
