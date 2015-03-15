//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/actor-ios/build/java/im/actor/model/crypto/encoding/PKS8RsaPrivateKey.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/crypto/asn1/ASN1.h"
#include "im/actor/model/crypto/asn1/ASN1Integer.h"
#include "im/actor/model/crypto/asn1/ASN1Null.h"
#include "im/actor/model/crypto/asn1/ASN1ObjectIdentifier.h"
#include "im/actor/model/crypto/asn1/ASN1OctetString.h"
#include "im/actor/model/crypto/asn1/ASN1Primitive.h"
#include "im/actor/model/crypto/asn1/ASN1Sequence.h"
#include "im/actor/model/crypto/encoding/PKS8RsaPrivateKey.h"
#include "java/io/IOException.h"
#include "java/math/BigInteger.h"

@interface ImActorModelCryptoEncodingPKS8RsaPrivateKey () {
 @public
  JavaMathBigInteger *modulus_;
  JavaMathBigInteger *exponent_;
}
@end

J2OBJC_FIELD_SETTER(ImActorModelCryptoEncodingPKS8RsaPrivateKey, modulus_, JavaMathBigInteger *)
J2OBJC_FIELD_SETTER(ImActorModelCryptoEncodingPKS8RsaPrivateKey, exponent_, JavaMathBigInteger *)

@implementation ImActorModelCryptoEncodingPKS8RsaPrivateKey

NSString * ImActorModelCryptoEncodingPKS8RsaPrivateKey_ALGO_ = @"1.2.840.113549.1.1.1";

- (instancetype)initWithJavaMathBigInteger:(JavaMathBigInteger *)modulus
                    withJavaMathBigInteger:(JavaMathBigInteger *)exponent {
  if (self = [super init]) {
    self->modulus_ = modulus;
    self->exponent_ = exponent;
  }
  return self;
}

- (instancetype)initWithByteArray:(IOSByteArray *)encoded {
  if (self = [super init]) {
    ImActorModelCryptoAsn1ASN1Primitive *root = ImActorModelCryptoAsn1ASN1_readObjectWithByteArray_(encoded);
    if (!([root isKindOfClass:[ImActorModelCryptoAsn1ASN1Sequence class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    ImActorModelCryptoAsn1ASN1Sequence *sequence = (ImActorModelCryptoAsn1ASN1Sequence *) check_class_cast(root, [ImActorModelCryptoAsn1ASN1Sequence class]);
    if (!([[((ImActorModelCryptoAsn1ASN1Sequence *) nil_chk(sequence)) getWithInt:0] isKindOfClass:[ImActorModelCryptoAsn1ASN1Integer class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    if ([((JavaMathBigInteger *) nil_chk([((ImActorModelCryptoAsn1ASN1Integer *) nil_chk(((ImActorModelCryptoAsn1ASN1Integer *) check_class_cast([sequence getWithInt:0], [ImActorModelCryptoAsn1ASN1Integer class])))) asBigInteger])) intValue] != 0) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    if (!([[sequence getWithInt:1] isKindOfClass:[ImActorModelCryptoAsn1ASN1Sequence class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    ImActorModelCryptoAsn1ASN1Sequence *algoHeader = (ImActorModelCryptoAsn1ASN1Sequence *) check_class_cast([sequence getWithInt:1], [ImActorModelCryptoAsn1ASN1Sequence class]);
    if (!([[((ImActorModelCryptoAsn1ASN1Sequence *) nil_chk(algoHeader)) getWithInt:0] isKindOfClass:[ImActorModelCryptoAsn1ASN1ObjectIdentifier class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    ImActorModelCryptoAsn1ASN1ObjectIdentifier *algo = (ImActorModelCryptoAsn1ASN1ObjectIdentifier *) check_class_cast([algoHeader getWithInt:0], [ImActorModelCryptoAsn1ASN1ObjectIdentifier class]);
    if (![((NSString *) nil_chk([((ImActorModelCryptoAsn1ASN1ObjectIdentifier *) nil_chk(algo)) getIdentifier])) isEqual:ImActorModelCryptoEncodingPKS8RsaPrivateKey_ALGO_]) {
      @throw [[JavaIoIOException alloc] initWithNSString:JreStrcat("$$", @"Incorrect type of header: ", [algo getIdentifier])];
    }
    if (!([[sequence getWithInt:2] isKindOfClass:[ImActorModelCryptoAsn1ASN1OctetString class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    IOSByteArray *contents = [((ImActorModelCryptoAsn1ASN1OctetString *) nil_chk(((ImActorModelCryptoAsn1ASN1OctetString *) check_class_cast([sequence getWithInt:2], [ImActorModelCryptoAsn1ASN1OctetString class])))) getData];
    ImActorModelCryptoAsn1ASN1Primitive *keyRoot = ImActorModelCryptoAsn1ASN1_readObjectWithByteArray_(contents);
    if (!([keyRoot isKindOfClass:[ImActorModelCryptoAsn1ASN1Sequence class]])) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    ImActorModelCryptoAsn1ASN1Sequence *keySequence = (ImActorModelCryptoAsn1ASN1Sequence *) check_class_cast(keyRoot, [ImActorModelCryptoAsn1ASN1Sequence class]);
    if ([((ImActorModelCryptoAsn1ASN1Sequence *) nil_chk(keySequence)) size] != 9) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    for (jint i = 0; i < 9; i++) {
      if (!([[keySequence getWithInt:i] isKindOfClass:[ImActorModelCryptoAsn1ASN1Integer class]])) {
        @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
      }
    }
    jint keyVersion = [((JavaMathBigInteger *) nil_chk([((ImActorModelCryptoAsn1ASN1Integer *) nil_chk(((ImActorModelCryptoAsn1ASN1Integer *) check_class_cast([keySequence getWithInt:0], [ImActorModelCryptoAsn1ASN1Integer class])))) asBigInteger])) intValue];
    if (keyVersion != 0 && keyVersion != 1) {
      @throw [[JavaIoIOException alloc] initWithNSString:@"Incorrect type of sequence"];
    }
    modulus_ = [((ImActorModelCryptoAsn1ASN1Integer *) nil_chk(((ImActorModelCryptoAsn1ASN1Integer *) check_class_cast([keySequence getWithInt:1], [ImActorModelCryptoAsn1ASN1Integer class])))) asBigInteger];
    exponent_ = [((ImActorModelCryptoAsn1ASN1Integer *) nil_chk(((ImActorModelCryptoAsn1ASN1Integer *) check_class_cast([keySequence getWithInt:3], [ImActorModelCryptoAsn1ASN1Integer class])))) asBigInteger];
  }
  return self;
}

- (JavaMathBigInteger *)getModulus {
  return modulus_;
}

- (JavaMathBigInteger *)getExponent {
  return exponent_;
}

- (IOSByteArray *)serialize {
  return [((ImActorModelCryptoAsn1ASN1Sequence *) [[ImActorModelCryptoAsn1ASN1Sequence alloc] initWithImActorModelCryptoAsn1ASN1PrimitiveArray:[IOSObjectArray newArrayWithObjects:(id[]){ [[ImActorModelCryptoAsn1ASN1Integer alloc] initWithInt:0], [[ImActorModelCryptoAsn1ASN1Sequence alloc] initWithImActorModelCryptoAsn1ASN1PrimitiveArray:[IOSObjectArray newArrayWithObjects:(id[]){ [[ImActorModelCryptoAsn1ASN1ObjectIdentifier alloc] initWithNSString:ImActorModelCryptoEncodingPKS8RsaPrivateKey_ALGO_], [[ImActorModelCryptoAsn1ASN1Null alloc] init] } count:2 type:ImActorModelCryptoAsn1ASN1Primitive_class_()]], [[ImActorModelCryptoAsn1ASN1OctetString alloc] initWithByteArray:[((ImActorModelCryptoAsn1ASN1Sequence *) [[ImActorModelCryptoAsn1ASN1Sequence alloc] initWithImActorModelCryptoAsn1ASN1PrimitiveArray:[IOSObjectArray newArrayWithObjects:(id[]){ [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] initWithJavaMathBigInteger:modulus_], [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] initWithJavaMathBigInteger:exponent_], [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] init], [[ImActorModelCryptoAsn1ASN1Integer alloc] init] } count:9 type:ImActorModelCryptoAsn1ASN1Primitive_class_()]]) serialize]] } count:3 type:ImActorModelCryptoAsn1ASN1Primitive_class_()]]) serialize];
}

- (void)copyAllFieldsTo:(ImActorModelCryptoEncodingPKS8RsaPrivateKey *)other {
  [super copyAllFieldsTo:other];
  other->modulus_ = modulus_;
  other->exponent_ = exponent_;
}

@end

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelCryptoEncodingPKS8RsaPrivateKey)
