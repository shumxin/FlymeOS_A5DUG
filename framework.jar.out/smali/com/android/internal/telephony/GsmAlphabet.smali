.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field private static final GREEK_LOCKING_SHIFT_IDX:I = 0xe

.field private static final GREEK_SINGLE_SHIFT_IDX:I = 0xe

.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field public static final NATIONAL_LANGUAGE_ID_GREEK:I = 0xe

.field public static final NATIONAL_LANGUAGE_ID_GSM:I = 0x0

.field public static final NATIONAL_LANGUAGE_ID_PORTUGUESE:I = 0x3

.field public static final NATIONAL_LANGUAGE_ID_SPANISH:I = 0x2

.field public static final NATIONAL_LANGUAGE_ID_TURKISH:I = 0x1

.field private static final PORTUGUESE_LOCKING_SHIFT_IDX:I = 0x3

.field private static final PORTUGUESE_SINGLE_SHIFT_IDX:I = 0x3

.field private static final SPANISH_SINGLE_SHIFT_IDX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final TURKISH_SINGLE_SHIFT_IDX:I = 0x1

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmExtendedGreek:Landroid/util/SparseIntArray;

.field private static final charToGsmGreek:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 1144
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1183
    const/16 v11, 0xf

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, ""

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string/jumbo v13, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string/jumbo v13, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string/jumbo v13, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string/jumbo v13, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string/jumbo v13, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v13, v11, v12

    const/16 v12, 0xb

    const-string v13, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string/jumbo v13, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v13, v11, v12

    const/16 v12, 0xd

    const-string/jumbo v13, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v13, v11, v12

    const/16 v12, 0xe

    const-string v13, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u0147\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v13, v11, v12

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1384
    const/16 v11, 0xf

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x6

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/4 v12, 0x7

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0x8

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0x9

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xa

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xb

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xc

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xd

    const-string v13, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v13, v11, v12

    const/16 v12, 0xe

    const-string v13, ""

    aput-object v13, v11, v12

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1523
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 1524
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v6, v11

    .line 1525
    .local v6, "numTables":I
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v5, v11

    .line 1526
    .local v5, "numShiftTables":I
    if-eq v6, v5, :cond_0

    .line 1527
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language tables array length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " != shift tables array length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_0
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1532
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_3

    .line 1533
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v9, v11, v3

    .line 1535
    .local v9, "table":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 1536
    .local v10, "tableLen":I
    if-eqz v10, :cond_1

    const/16 v11, 0x80

    if-eq v10, v11, :cond_1

    .line 1537
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language tables index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (expected 128 or 0)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_1
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v10}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1542
    .local v1, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v11, v3

    .line 1543
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v10, :cond_2

    .line 1544
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1545
    .local v0, "c":C
    invoke-virtual {v1, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1543
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1532
    .end local v0    # "c":C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1549
    .end local v1    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v9    # "table":Ljava/lang/String;
    .end local v10    # "tableLen":I
    :cond_3
    new-array v11, v6, [Landroid/util/SparseIntArray;

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1550
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_7

    .line 1551
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v7, v11, v3

    .line 1553
    .local v7, "shiftTable":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 1554
    .local v8, "shiftTableLen":I
    if-eqz v8, :cond_4

    const/16 v11, 0x80

    if-eq v8, v11, :cond_4

    .line 1555
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: language shift tables index "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (expected 128 or 0)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_4
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v8}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1560
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v2, v11, v3

    .line 1561
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    if-ge v4, v8, :cond_6

    .line 1562
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1563
    .restart local v0    # "c":C
    const/16 v11, 0x20

    if-eq v0, v11, :cond_5

    .line 1564
    invoke-virtual {v2, v0, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1561
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1550
    .end local v0    # "c":C
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1591
    .end local v2    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v4    # "j":I
    .end local v7    # "shiftTable":Ljava/lang/String;
    .end local v8    # "shiftTableLen":I
    :cond_7
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1592
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1596
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    .line 1597
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    .line 1601
    const/4 v3, 0x0

    .line 1606
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v12, 0xfeff

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1607
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v12, 0xc

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1610
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x40

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1611
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa3

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1612
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x24

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1613
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa5

    const/4 v13, 0x3

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1614
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe8

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1615
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe9

    const/4 v13, 0x5

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1616
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xf9

    const/4 v13, 0x6

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1617
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xec

    const/4 v13, 0x7

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1618
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xf2

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1619
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc7

    const/16 v13, 0x9

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1620
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1621
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xd8

    const/16 v13, 0xb

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1622
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xf8

    const/16 v13, 0xc

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1623
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xd

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1624
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc5

    const/16 v13, 0xe

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1625
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe5

    const/16 v13, 0xf

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1627
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x394

    const/16 v13, 0x10

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1628
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5f

    const/16 v13, 0x11

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1629
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a6

    const/16 v13, 0x12

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1630
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x393

    const/16 v13, 0x13

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1631
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39b

    const/16 v13, 0x14

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1632
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a9

    const/16 v13, 0x15

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1633
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a0

    const/16 v13, 0x16

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1634
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a8

    const/16 v13, 0x17

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1635
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a3

    const/16 v13, 0x18

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1636
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x398

    const/16 v13, 0x19

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1637
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39e

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1638
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const v12, 0xffff

    const/16 v13, 0x1b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1639
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc6

    const/16 v13, 0x1c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1640
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe6

    const/16 v13, 0x1d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1641
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xdf

    const/16 v13, 0x1e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1642
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc9

    const/16 v13, 0x1f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1644
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x20

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1645
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x21

    const/16 v13, 0x21

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1646
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x22

    const/16 v13, 0x22

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1647
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x23

    const/16 v13, 0x23

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1648
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa4

    const/16 v13, 0x24

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1649
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x25

    const/16 v13, 0x25

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1650
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x26

    const/16 v13, 0x26

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1651
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x27

    const/16 v13, 0x27

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1652
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x28

    const/16 v13, 0x28

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1653
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x29

    const/16 v13, 0x29

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1654
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2a

    const/16 v13, 0x2a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1655
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2b

    const/16 v13, 0x2b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1656
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2c

    const/16 v13, 0x2c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1657
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2d

    const/16 v13, 0x2d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1658
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2e

    const/16 v13, 0x2e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1659
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x2f

    const/16 v13, 0x2f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1661
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x30

    const/16 v13, 0x30

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1662
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x31

    const/16 v13, 0x31

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1663
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x32

    const/16 v13, 0x32

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1664
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x33

    const/16 v13, 0x33

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1665
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x34

    const/16 v13, 0x34

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1666
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x35

    const/16 v13, 0x35

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1667
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x36

    const/16 v13, 0x36

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1668
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x37

    const/16 v13, 0x37

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1669
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x38

    const/16 v13, 0x38

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1670
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39

    const/16 v13, 0x39

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1671
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a

    const/16 v13, 0x3a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1672
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3b

    const/16 v13, 0x3b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1673
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3c

    const/16 v13, 0x3c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1674
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3d

    const/16 v13, 0x3d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1675
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3e

    const/16 v13, 0x3e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1676
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3f

    const/16 v13, 0x3f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1678
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa1

    const/16 v13, 0x40

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1679
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x391

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1680
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x41

    const/16 v13, 0x41

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1681
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x392

    const/16 v13, 0x42

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1682
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x42

    const/16 v13, 0x42

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1683
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x43

    const/16 v13, 0x43

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1684
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x44

    const/16 v13, 0x44

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1685
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x395

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1686
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x45

    const/16 v13, 0x45

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1687
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x46

    const/16 v13, 0x46

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1688
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x47

    const/16 v13, 0x47

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1689
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x397

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1690
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x48

    const/16 v13, 0x48

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1691
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x399

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1692
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x49

    const/16 v13, 0x49

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1693
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4a

    const/16 v13, 0x4a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1694
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39a

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1695
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4b

    const/16 v13, 0x4b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1696
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4c

    const/16 v13, 0x4c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1697
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39c

    const/16 v13, 0x4d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1698
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4d

    const/16 v13, 0x4d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1699
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39d

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1700
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4e

    const/16 v13, 0x4e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1701
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x39f

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1702
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x4f

    const/16 v13, 0x4f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1704
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a1

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1705
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x50

    const/16 v13, 0x50

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1706
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x51

    const/16 v13, 0x51

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1707
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x52

    const/16 v13, 0x52

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1708
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x53

    const/16 v13, 0x53

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1709
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a4

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1710
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x54

    const/16 v13, 0x54

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1711
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x55

    const/16 v13, 0x55

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1712
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a5

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1713
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x59

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1714
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x56

    const/16 v13, 0x56

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1715
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x57

    const/16 v13, 0x57

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1716
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x3a7

    const/16 v13, 0x58

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1717
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x58

    const/16 v13, 0x58

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1718
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x38e

    const/16 v13, 0x59

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1719
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x396

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1720
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5a

    const/16 v13, 0x5a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1721
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc4

    const/16 v13, 0x5b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1722
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xd6

    const/16 v13, 0x5c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1723
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x147

    const/16 v13, 0x5d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1724
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xdc

    const/16 v13, 0x5e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1725
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xa7

    const/16 v13, 0x5f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1727
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xbf

    const/16 v13, 0x60

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1728
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x61

    const/16 v13, 0x61

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1729
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x62

    const/16 v13, 0x62

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1730
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x63

    const/16 v13, 0x63

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1731
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x64

    const/16 v13, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1732
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x65

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1733
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x66

    const/16 v13, 0x66

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1734
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x67

    const/16 v13, 0x67

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1735
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x68

    const/16 v13, 0x68

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1736
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x69

    const/16 v13, 0x69

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1737
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6a

    const/16 v13, 0x6a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1738
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6b

    const/16 v13, 0x6b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1739
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6c

    const/16 v13, 0x6c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1740
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6d

    const/16 v13, 0x6d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1741
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6e

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1742
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x6f

    const/16 v13, 0x6f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1744
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x70

    const/16 v13, 0x70

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1745
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x71

    const/16 v13, 0x71

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1746
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x72

    const/16 v13, 0x72

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1747
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x73

    const/16 v13, 0x73

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1748
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x74

    const/16 v13, 0x74

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1749
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x75

    const/16 v13, 0x75

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1750
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x76

    const/16 v13, 0x76

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1751
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x77

    const/16 v13, 0x77

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1752
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x78

    const/16 v13, 0x78

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1753
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x79

    const/16 v13, 0x79

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1754
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x7a

    const/16 v13, 0x7a

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1755
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe4

    const/16 v13, 0x7b

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1756
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xf6

    const/16 v13, 0x7c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1757
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xf1

    const/16 v13, 0x7d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1758
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xfc

    const/16 v13, 0x7e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1759
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xe0

    const/16 v13, 0x7f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1761
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    const v12, 0xfeff

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1764
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1765
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5e

    const/16 v13, 0x14

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1766
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x7b

    const/16 v13, 0x28

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1767
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x7d

    const/16 v13, 0x29

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1768
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5c

    const/16 v13, 0x2f

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1769
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5b

    const/16 v13, 0x3c

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1770
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x7e

    const/16 v13, 0x3d

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1771
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x5d

    const/16 v13, 0x3e

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1772
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x7c

    const/16 v13, 0x40

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1773
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0x20ac

    const/16 v13, 0x65

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1775
    sget-object v11, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    const/16 v12, 0xc

    const/16 v13, 0xa

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 1776
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 144
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 5
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 167
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 169
    .local v0, "ret":I
    if-ne v0, v2, :cond_2

    .line 170
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 172
    if-ne v0, v2, :cond_1

    .line 173
    if-eqz p1, :cond_0

    .line 174
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 176
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 179
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 183
    goto :goto_0
.end method

.method public static charToGsm(CZI)I
    .locals 9
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .param p2, "nli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1867
    const/4 v3, 0x1

    invoke-static {v3, p2}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v1

    .line 1868
    .local v1, "languageTableIndex":I
    invoke-static {v7, p2}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v0

    .line 1870
    .local v0, "languageShiftTableIndex":I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "table index htc/gep: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    invoke-static {v1, p0}, Lcom/android/internal/telephony/GsmAlphabet;->getHTCLockingCharToGsm(IC)I

    move-result v2

    .line 1874
    .local v2, "ret":I
    if-ne v2, v6, :cond_0

    .line 1875
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1880
    :cond_0
    if-ne v2, v6, :cond_4

    .line 1882
    invoke-static {v0, p0}, Lcom/android/internal/telephony/GsmAlphabet;->getHTCSingleShiftCharToGsm(IC)I

    move-result v2

    .line 1885
    if-ne v2, v6, :cond_1

    .line 1886
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 1891
    :cond_1
    if-ne v2, v6, :cond_3

    .line 1892
    if-eqz p1, :cond_2

    .line 1893
    const-string v3, "GSM"

    const-string/jumbo v4, "throw exception"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    new-instance v3, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v3

    .line 1896
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v3, v3, v7

    invoke-virtual {v3, v8, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1904
    :goto_0
    return v3

    .line 1899
    :cond_3
    const-string v3, "GSM"

    const-string/jumbo v4, "retuen extended escape"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    const/16 v3, 0x1b

    goto :goto_0

    :cond_4
    move v3, v2

    .line 1904
    goto :goto_0
.end method

.method public static charToGsmExtended(C)I
    .locals 5
    .param p0, "c"    # C

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 197
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 199
    .local v0, "ret":I
    if-ne v0, v2, :cond_0

    .line 200
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 203
    .end local v0    # "ret":I
    :cond_0
    return v0
.end method

.method public static charToGsmExtended(CI)I
    .locals 7
    .param p0, "c"    # C
    .param p1, "nli"    # I

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 1914
    invoke-static {v5, p1}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v0

    .line 1918
    .local v0, "languageShiftTableIndex":I
    invoke-static {v0, p0}, Lcom/android/internal/telephony/GsmAlphabet;->getHTCSingleShiftCharToGsm(IC)I

    move-result v1

    .line 1919
    .local v1, "ret":I
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got HTC extend chartoGSM result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1922
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1925
    .end local v1    # "ret":I
    :cond_0
    return v1
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 757
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 760
    :goto_0
    return v1

    .line 758
    :catch_0
    move-exception v0

    .line 760
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 4
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 775
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 787
    :cond_0
    :goto_0
    return v0

    .line 779
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 780
    const/4 v0, 0x2

    goto :goto_0

    .line 783
    :cond_2
    if-eqz p1, :cond_0

    .line 784
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1931
    const/4 v2, 0x0

    const/4 v3, -0x1

    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1934
    :goto_0
    return v1

    .line 1932
    :catch_0
    move-exception v0

    .line 1934
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;ZI)I
    .locals 6
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwsException"    # Z
    .param p2, "nli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 1941
    const/4 v1, 0x0

    .line 1942
    .local v1, "count":I
    const/4 v5, 0x1

    invoke-static {v5, p2}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v3

    .line 1943
    .local v3, "languageTable":I
    const/4 v5, 0x0

    invoke-static {v5, p2}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v2

    .line 1946
    .local v2, "languageShiftTable":I
    const/4 v5, -0x1

    if-eq p2, v5, :cond_1

    .line 1948
    invoke-static {p0, p1, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTablesByHtc(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 1961
    :cond_0
    return v1

    .line 1952
    :cond_1
    const/4 v0, 0x0

    .line 1953
    .local v0, "charIndex":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 1954
    .local v4, "sz":I
    const/4 v1, 0x0

    .line 1956
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1957
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v5

    add-int/2addr v1, v5

    .line 1958
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 27
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 870
    sget-boolean v25, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v25, :cond_0

    .line 871
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 874
    :cond_0
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_4

    .line 875
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 876
    .local v22, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 877
    .local v14, "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_2

    .line 878
    const/16 v22, 0x0

    .line 1005
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_1
    :goto_0
    return-object v22

    .line 880
    .restart local v14    # "septets":I
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 881
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 882
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_3

    .line 883
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 885
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 891
    :goto_1
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_0

    .line 888
    :cond_3
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 889
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1

    .line 895
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 896
    .local v11, "maxSingleShiftCode":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 900
    .local v10, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_6

    aget v6, v4, v7

    .line 903
    .local v6, "i":I
    if-eqz v6, :cond_5

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_5

    .line 904
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 908
    .end local v6    # "i":I
    :cond_6
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 910
    .local v19, "sz":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v6, v0, :cond_f

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_f

    .line 911
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 912
    .local v5, "c":C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_8

    .line 913
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 917
    :cond_8
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 918
    .local v9, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 919
    .local v21, "tableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 921
    const/16 v20, 0x0

    .local v20, "table":I
    :goto_4
    move/from16 v0, v20

    if-gt v0, v11, :cond_9

    .line 922
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 923
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 924
    .local v18, "shiftTableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    .line 925
    if-eqz p1, :cond_b

    .line 927
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 928
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 921
    .end local v18    # "shiftTableIndex":I
    :cond_a
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 931
    .restart local v18    # "shiftTableIndex":I
    :cond_b
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_5

    .line 935
    :cond_c
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_5

    .line 941
    .end local v18    # "shiftTableIndex":I
    .end local v20    # "table":I
    :cond_d
    const/16 v20, 0x0

    .restart local v20    # "table":I
    :goto_6
    move/from16 v0, v20

    if-gt v0, v11, :cond_9

    .line 942
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    .line 943
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 941
    :cond_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 951
    .end local v5    # "c":C
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20    # "table":I
    .end local v21    # "tableIndex":I
    :cond_f
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 952
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 953
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 954
    const v12, 0x7fffffff

    .line 955
    .local v12, "minUnencodableCount":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 956
    .restart local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, "shiftTable":I
    :goto_7
    move/from16 v0, v17

    if-gt v0, v11, :cond_10

    .line 957
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 958
    .restart local v14    # "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_12

    .line 956
    :cond_11
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 962
    :cond_12
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_17

    if-eqz v17, :cond_17

    .line 963
    const/16 v23, 0x8

    .line 971
    .local v23, "udhLength":I
    :goto_9
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1a

    .line 972
    if-nez v23, :cond_13

    .line 973
    const/16 v23, 0x1

    .line 975
    :cond_13
    add-int/lit8 v23, v23, 0x6

    .line 976
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 977
    .local v15, "septetsPerMessage":I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 978
    .local v13, "msgCount":I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 984
    .end local v15    # "septetsPerMessage":I
    .local v16, "septetsRemaining":I
    :goto_a
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 985
    .local v24, "unencodableCount":I
    if-eqz p1, :cond_14

    move/from16 v0, v24

    if-gt v0, v12, :cond_11

    .line 988
    :cond_14
    if-eqz p1, :cond_15

    move/from16 v0, v24

    if-lt v0, v12, :cond_16

    :cond_15
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_16

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_11

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 991
    :cond_16
    move/from16 v12, v24

    .line 992
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 993
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 994
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 995
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 996
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_8

    .line 964
    .end local v13    # "msgCount":I
    .end local v16    # "septetsRemaining":I
    .end local v23    # "udhLength":I
    .end local v24    # "unencodableCount":I
    :cond_17
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_18

    if-eqz v17, :cond_19

    .line 965
    :cond_18
    const/16 v23, 0x5

    .restart local v23    # "udhLength":I
    goto :goto_9

    .line 967
    .end local v23    # "udhLength":I
    :cond_19
    const/16 v23, 0x0

    .restart local v23    # "udhLength":I
    goto :goto_9

    .line 980
    :cond_1a
    const/4 v13, 0x1

    .line 981
    .restart local v13    # "msgCount":I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16    # "septetsRemaining":I
    goto :goto_a

    .line 1001
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "msgCount":I
    .end local v14    # "septets":I
    .end local v16    # "septetsRemaining":I
    .end local v17    # "shiftTable":I
    .end local v23    # "udhLength":I
    :cond_1b
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1002
    const/16 v22, 0x0

    goto/16 :goto_0
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/16 v8, 0xe

    const/4 v6, -0x1

    .line 818
    const/4 v3, 0x0

    .line 819
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 820
    .local v5, "sz":I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 821
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 824
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    if-ne p2, v8, :cond_0

    .line 825
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    .line 826
    :cond_0
    if-ne p3, v8, :cond_1

    .line 827
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    .line 830
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 831
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 832
    .local v0, "c":C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_2

    .line 833
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 836
    :cond_2
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 837
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 838
    :cond_3
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 839
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 840
    :cond_4
    if-eqz p1, :cond_5

    .line 841
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v3, v6

    .line 846
    .end local v0    # "c":C
    .end local v3    # "count":I
    :cond_6
    return v3
.end method

.method public static countGsmSeptetsUsingTablesByHtc(Ljava/lang/CharSequence;ZII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "throwException"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xe

    const/4 v6, -0x1

    .line 2062
    const/4 v3, 0x0

    .line 2063
    .local v3, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 2064
    .local v5, "sz":I
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v7, p2

    .line 2065
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v7, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v7, p3

    .line 2067
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    if-ne p2, v8, :cond_0

    .line 2068
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    .line 2069
    :cond_0
    if-ne p3, v8, :cond_1

    .line 2070
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    .line 2074
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_6

    .line 2075
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2076
    .local v0, "c":C
    const/16 v7, 0x1b

    if-ne v0, v7, :cond_2

    .line 2077
    const-string v7, "GSM"

    const-string v8, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2080
    :cond_2
    invoke-virtual {v1, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 2081
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2082
    :cond_3
    invoke-virtual {v2, v0, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 2083
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 2084
    :cond_4
    if-eqz p1, :cond_5

    .line 2085
    new-instance v6, Lcom/android/internal/telephony/EncodeException;

    const-string v7, "countGsmSeptetsUsingTablesByHtc(): unencodable char"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move v3, v6

    .line 2090
    .end local v0    # "c":C
    .end local v3    # "count":I
    :cond_6
    return v3
.end method

.method private static enableCountrySpecificEncodings()V
    .locals 3

    .prologue
    .line 1115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1117
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1118
    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1120
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1121
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1126
    :goto_0
    return-void

    .line 1124
    :cond_0
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_0
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;III)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "nli"    # I

    .prologue
    .line 1855
    const/4 v2, 0x1

    invoke-static {v2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v1

    .line 1856
    .local v1, "languageTable":I
    const/4 v2, 0x0

    invoke-static {v2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v0

    .line 1858
    .local v0, "languageShiftTable":I
    invoke-static {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v2

    return v2
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .prologue
    const/16 v8, 0xe

    const/4 v7, -0x1

    .line 1025
    const/4 v0, 0x0

    .line 1026
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1028
    .local v5, "size":I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 1029
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 1032
    .local v1, "charToLangShiftTable":Landroid/util/SparseIntArray;
    if-ne p3, v8, :cond_0

    .line 1033
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    .line 1034
    :cond_0
    if-ne p4, v8, :cond_1

    .line 1035
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    .line 1038
    :cond_1
    move v4, p1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_5

    .line 1039
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1040
    .local v3, "encodedSeptet":I
    if-ne v3, v7, :cond_3

    .line 1041
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1042
    if-ne v3, v7, :cond_2

    .line 1044
    add-int/lit8 v0, v0, 0x1

    .line 1051
    :goto_1
    if-le v0, p2, :cond_4

    .line 1055
    .end local v3    # "encodedSeptet":I
    .end local v4    # "i":I
    :goto_2
    return v4

    .line 1046
    .restart local v3    # "encodedSeptet":I
    .restart local v4    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 1049
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1038
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "encodedSeptet":I
    :cond_5
    move v4, v5

    .line 1055
    goto :goto_2
.end method

.method static declared-synchronized getEnabledLockingShiftTables()[I
    .locals 2

    .prologue
    .line 1107
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getEnabledSingleShiftTables()[I
    .locals 2

    .prologue
    .line 1096
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getHTCLockingCharToGsm(IC)I
    .locals 3
    .param p0, "lauguagetable"    # I
    .param p1, "c"    # C

    .prologue
    const/4 v1, -0x1

    .line 1781
    const/4 v0, 0x0

    .line 1783
    .local v0, "arraytable":Landroid/util/SparseIntArray;
    if-nez p0, :cond_1

    .line 1784
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1796
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1797
    :cond_0
    return v1

    .line 1785
    :cond_1
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 1786
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1787
    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    .line 1788
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1789
    :cond_3
    const/4 v2, 0x3

    if-ne p0, v2, :cond_4

    .line 1790
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    goto :goto_0

    .line 1791
    :cond_4
    const/16 v2, 0xe

    if-ne p0, v2, :cond_0

    .line 1792
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmGreek:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method private static getHTCSingleShiftCharToGsm(IC)I
    .locals 3
    .param p0, "lauguagetable"    # I
    .param p1, "c"    # C

    .prologue
    const/4 v1, -0x1

    .line 1803
    const/4 v0, 0x0

    .line 1805
    .local v0, "arraytable":Landroid/util/SparseIntArray;
    if-nez p0, :cond_1

    .line 1806
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1812
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1813
    :cond_0
    return v1

    .line 1807
    :cond_1
    const/16 v2, 0xe

    if-ne p0, v2, :cond_0

    .line 1808
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtendedGreek:Landroid/util/SparseIntArray;

    goto :goto_0
.end method

.method private static getLocaleTableidxFromNli(ZI)I
    .locals 4
    .param p0, "b_locking"    # Z
    .param p1, "nli"    # I

    .prologue
    const/16 v3, 0xe

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1825
    const/4 v0, 0x0

    .line 1827
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_0

    .line 1845
    :goto_0
    return v0

    .line 1830
    :sswitch_0
    if-eqz p0, :cond_0

    move v0, v1

    .line 1831
    :goto_1
    goto :goto_0

    .line 1830
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1834
    :sswitch_1
    if-eqz p0, :cond_1

    move v0, v1

    .line 1835
    :goto_2
    goto :goto_0

    .line 1834
    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    .line 1837
    :sswitch_2
    if-eqz p0, :cond_2

    move v0, v2

    .line 1838
    :goto_3
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1837
    goto :goto_3

    .line 1841
    :sswitch_3
    if-eqz p0, :cond_3

    move v0, v3

    :goto_4
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_4

    .line 1827
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xe -> :sswitch_3
    .end sparse-switch
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .prologue
    const/4 v3, 0x0

    .line 490
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .locals 15
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .prologue
    .line 511
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 513
    .local v9, "ret":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_0

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_1

    .line 514
    :cond_0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 p4, 0x0

    .line 517
    :cond_1
    if-ltz p5, :cond_2

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_3

    .line 518
    :cond_2
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/16 p5, 0x0

    .line 523
    :cond_3
    const/4 v8, 0x0

    .line 524
    .local v8, "prevCharWasEscape":Z
    :try_start_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 525
    .local v7, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 527
    .local v11, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 528
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 531
    :cond_4
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 532
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 536
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v6, v0, :cond_b

    .line 537
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 539
    .local v1, "bitOffset":I
    div-int/lit8 v2, v1, 0x8

    .line 540
    .local v2, "byteOffset":I
    rem-int/lit8 v10, v1, 0x8

    .line 543
    .local v10, "shift":I
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 546
    .local v5, "gsmVal":I
    const/4 v12, 0x1

    if-le v10, v12, :cond_6

    .line 548
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 550
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 553
    :cond_6
    if-eqz v8, :cond_9

    .line 554
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_7

    .line 555
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 564
    :goto_1
    const/4 v8, 0x0

    .line 536
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 557
    :cond_7
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 558
    .local v3, "c":C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_8

    .line 559
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 571
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v3    # "c":C
    .end local v5    # "gsmVal":I
    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shift":I
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 572
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    const/4 v12, 0x0

    .line 576
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_3
    return-object v12

    .line 561
    .restart local v1    # "bitOffset":I
    .restart local v2    # "byteOffset":I
    .restart local v3    # "c":C
    .restart local v5    # "gsmVal":I
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v10    # "shift":I
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_8
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 565
    .end local v3    # "c":C
    :cond_9
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_a

    .line 566
    const/4 v8, 0x1

    goto :goto_2

    .line 568
    :cond_a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 576
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v5    # "gsmVal":I
    .end local v10    # "shift":I
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 594
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .prologue
    .line 609
    const/4 v5, 0x0

    .line 610
    .local v5, "isMbcs":Z
    const/4 v2, 0x0

    .line 611
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/4 v7, 0x0

    .line 613
    .local v7, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 616
    const/4 v5, 0x1

    .line 617
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 618
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 622
    :cond_0
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 623
    .local v6, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 625
    .local v11, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 626
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 627
    .local v8, "prevWasEscape":Z
    move v3, p1

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    add-int v12, p1, p2

    if-ge v4, v12, :cond_1

    .line 630
    aget-byte v12, p0, v4

    and-int/lit16 v1, v12, 0xff

    .line 632
    .local v1, "c":I
    const/16 v12, 0xff

    if-ne v1, v12, :cond_2

    .line 677
    .end local v1    # "c":I
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 634
    .restart local v1    # "c":I
    :cond_2
    const/16 v12, 0x1b

    if-ne v1, v12, :cond_4

    .line 635
    if-eqz v8, :cond_3

    .line 639
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    const/4 v8, 0x0

    move v3, v4

    .line 627
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 642
    :cond_3
    const/4 v8, 0x1

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 645
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_4
    if-eqz v8, :cond_8

    .line 646
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_5

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 648
    .local v10, "shiftChar":C
    :goto_2
    const/16 v12, 0x20

    if-ne v10, v12, :cond_7

    .line 650
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_6

    .line 651
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move v3, v4

    .line 673
    .end local v4    # "i":I
    .end local v10    # "shiftChar":C
    .restart local v3    # "i":I
    :goto_4
    const/4 v8, 0x0

    goto :goto_1

    .line 646
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_5
    const/16 v10, 0x20

    goto :goto_2

    .line 653
    .restart local v10    # "shiftChar":C
    :cond_6
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 656
    :cond_7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 659
    .end local v10    # "shiftChar":C
    :cond_8
    if-eqz v5, :cond_9

    const/16 v12, 0x80

    if-lt v1, v12, :cond_9

    add-int/lit8 v12, v4, 0x1

    add-int v13, p1, p2

    if-lt v12, v13, :cond_b

    .line 660
    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_a

    .line 661
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 663
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_4

    .line 667
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_b
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 668
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/4 v12, 0x2

    invoke-virtual {v7, p0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 669
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 670
    invoke-virtual {v2, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static gsmExtendedToChar(I)C
    .locals 4
    .param p0, "gsmChar"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 242
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_1

    move v0, v1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-ge p0, v2, :cond_2

    .line 245
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    .local v0, "c":C
    if-ne v0, v1, :cond_0

    .line 247
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .end local v0    # "c":C
    :cond_2
    move v0, v1

    .line 252
    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .param p0, "gsmChar"    # I

    .prologue
    .line 220
    if-ltz p0, :cond_0

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    .line 221
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 223
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public static isGsmSeptets(C)Z
    .locals 4
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 792
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    .line 796
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 800
    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .prologue
    .line 467
    div-int/lit8 v0, p1, 0x8

    .line 468
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 470
    .local v1, "shift":I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 472
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 473
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 475
    :cond_0
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    .prologue
    .line 1084
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1085
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit v1

    return-void

    .line 1084
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .locals 2
    .param p0, "tables"    # [I

    .prologue
    .line 1066
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1067
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1069
    array-length v0, p0

    if-lez v0, :cond_0

    .line 1070
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1074
    :goto_0
    monitor-exit v1

    return-void

    .line 1072
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 332
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IIIZI)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "dataOffset"    # I
    .param p2, "maxSeptets"    # I
    .param p3, "startingBitOffset"    # I
    .param p4, "throwException"    # Z
    .param p5, "nli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 1990
    const/4 v3, 0x1

    invoke-static {v3, p5}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v2

    .line 1991
    .local v2, "languageTable":I
    const/4 v3, 0x0

    invoke-static {v3, p5}, Lcom/android/internal/telephony/GsmAlphabet;->getLocaleTableidxFromNli(ZI)I

    move-result v1

    .line 1993
    .local v1, "languageShiftTable":I
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "laugnagetable/shifttable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    div-int/lit8 v0, p3, 0x7

    .line 1995
    .local v0, "dataSeptetsOffset":I
    invoke-static {p0, v0, p4, v2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v3

    return-object v3
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .locals 17
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 384
    .local v8, "dataLen":I
    if-nez p2, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v14, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v11

    .line 387
    .local v11, "septetCount":I
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GEP countGsmSeptets: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v14, -0x1

    if-ne v11, v14, :cond_1

    .line 390
    new-instance v14, Lcom/android/internal/telephony/EncodeException;

    const-string v15, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 384
    .end local v11    # "septetCount":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 392
    .restart local v11    # "septetCount":I
    :cond_1
    add-int v11, v11, p1

    .line 393
    const/16 v14, 0xff

    if-le v11, v14, :cond_2

    .line 394
    new-instance v14, Lcom/android/internal/telephony/EncodeException;

    const-string v15, "Payload cannot exceed 255 septets"

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 396
    :cond_2
    mul-int/lit8 v14, v11, 0x7

    add-int/lit8 v14, v14, 0x7

    div-int/lit8 v4, v14, 0x8

    .line 397
    .local v4, "byteCount":I
    add-int/lit8 v14, v4, 0x1

    new-array v10, v14, [B

    .line 398
    .local v10, "ret":[B
    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v6, v14, p3

    .line 399
    .local v6, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v7, v14, p4

    .line 401
    .local v7, "charToShiftTable":Landroid/util/SparseIntArray;
    move/from16 v12, p1

    .line 403
    .local v12, "septets":I
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "charToLanguageTable/shifttable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v9, 0x0

    .local v9, "i":I
    mul-int/lit8 v3, p1, 0x7

    .line 405
    .local v3, "bitOffset":I
    :goto_1
    if-ge v9, v8, :cond_8

    if-ge v12, v11, :cond_8

    .line 407
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 408
    .local v5, "c":C
    const/4 v14, -0x1

    invoke-virtual {v6, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 412
    .local v13, "v":I
    const/4 v14, -0x1

    if-ne v13, v14, :cond_3

    .line 413
    move/from16 v0, p3

    invoke-static {v0, v5}, Lcom/android/internal/telephony/GsmAlphabet;->getHTCLockingCharToGsm(IC)I

    move-result v13

    .line 418
    :cond_3
    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    .line 419
    const/4 v14, -0x1

    invoke-virtual {v7, v5, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 420
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "call Shift "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 424
    move/from16 v0, p4

    invoke-static {v0, v5}, Lcom/android/internal/telephony/GsmAlphabet;->getHTCSingleShiftCharToGsm(IC)I

    move-result v13

    .line 425
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "call getHTCShfitCharToGsm "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_4
    const/4 v14, -0x1

    if-ne v13, v14, :cond_7

    .line 430
    if-eqz p2, :cond_5

    .line 431
    const-string v14, "GSM"

    const-string/jumbo v15, "throwException"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v14, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v15, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v14, v15}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 434
    :cond_5
    const-string v14, "GSM"

    const-string v15, "Use space"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/16 v14, 0x20

    const/16 v15, 0x20

    invoke-virtual {v6, v14, v15}, Landroid/util/SparseIntArray;->get(II)I

    move-result v13

    .line 443
    :cond_6
    :goto_2
    invoke-static {v10, v3, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 444
    add-int/lit8 v12, v12, 0x1

    .line 406
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v3, v3, 0x7

    goto/16 :goto_1

    .line 438
    :cond_7
    const/16 v14, 0x1b

    invoke-static {v10, v3, v14}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 439
    add-int/lit8 v3, v3, 0x7

    .line 440
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 447
    .end local v5    # "c":C
    .end local v13    # "v":I
    :cond_8
    const-string v14, "GSM"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "htc septets count/septets: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v14, 0x0

    int-to-byte v15, v11

    aput-byte v15, v10, v14

    .line 454
    return-object v10
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 271
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BI)[B
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "nli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 2023
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 2024
    :cond_0
    const/4 v2, -0x1

    move-object v0, p0

    move v3, v1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZI)[B

    move-result-object v8

    .line 2042
    :goto_0
    return-object v8

    .line 2027
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v6, v0, 0x8

    .line 2028
    .local v6, "headerBits":I
    div-int/lit8 v7, v6, 0x7

    .line 2029
    .local v7, "headerSeptets":I
    rem-int/lit8 v0, v6, 0x7

    if-lez v0, :cond_2

    move v0, v4

    :goto_1
    add-int/2addr v7, v0

    .line 2031
    const-string v0, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Gsmalphbet: headerBits/headerSeptets are:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 2034
    .local v9, "sz":I
    invoke-static {p0, v4, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZI)I

    move-result v0

    add-int v2, v0, v7

    .line 2036
    .local v2, "septetCount":I
    mul-int/lit8 v3, v7, 0x7

    move-object v0, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IIIZI)[B

    move-result-object v8

    .line 2040
    .local v8, "ret":[B
    array-length v0, p1

    int-to-byte v0, v0

    aput-byte v0, v8, v4

    .line 2041
    const/4 v0, 0x2

    array-length v3, p1

    invoke-static {p1, v1, v8, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .end local v2    # "septetCount":I
    .end local v8    # "ret":[B
    .end local v9    # "sz":I
    :cond_2
    move v0, v1

    .line 2029
    goto :goto_1
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 299
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 300
    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 312
    :goto_0
    return-object v2

    .line 303
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 304
    .local v0, "headerBits":I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 306
    .local v1, "headerSeptets":I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 310
    .local v2, "ret":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 690
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 693
    .local v1, "septets":I
    new-array v0, v1, [B

    .line 695
    .local v0, "ret":[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 697
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 712
    move v4, p2

    .line 713
    .local v4, "outByteIndex":I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 714
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 717
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "sz":I
    move v5, v4

    .line 718
    .end local v4    # "outByteIndex":I
    .local v5, "outByteIndex":I
    :goto_0
    if-ge v3, v6, :cond_1

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_1

    .line 721
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 723
    .local v0, "c":C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 725
    .local v7, "v":I
    if-ne v7, v9, :cond_4

    .line 726
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 727
    if-ne v7, v9, :cond_0

    .line 728
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 739
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    :goto_1
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 731
    :cond_0
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_2

    .line 743
    .end local v0    # "c":C
    .end local v7    # "v":I
    :cond_1
    :goto_2
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3

    .line 744
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    goto :goto_2

    .line 735
    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_1

    .line 746
    .end local v0    # "c":C
    .end local v4    # "outByteIndex":I
    .end local v7    # "v":I
    .restart local v5    # "outByteIndex":I
    :cond_3
    return-void

    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_4
    move v4, v5

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    goto :goto_1
.end method
