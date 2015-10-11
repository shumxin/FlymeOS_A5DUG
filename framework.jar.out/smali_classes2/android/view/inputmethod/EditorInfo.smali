.class public Landroid/view/inputmethod/EditorInfo;
.super Ljava/lang/Object;
.source "EditorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/text/InputType;


# static fields
.field public static final IME_COMMAND_ACTION_ATTRS_CHANGED:Ljava/lang/String; = "com.meizu.input.attrsChanged"

.field public static final IME_COMMAND_ACTION_DICT_CHANGED:Ljava/lang/String; = "com.meizu.input.dictChanged"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_HIDE:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimHide"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_SHAKE:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimShake"

.field public static final IME_COMMAND_ACTION_VOICE_ANIM_SHOW:Ljava/lang/String; = "com.meizu.input.textviewVoiceAnimShow"

.field public static final IME_OPTION_CANDIDATE_ALWAYS_VISIBLE:Ljava/lang/String; = "com.meizu.input.candidateAlwaysVisible"

.field public static final IME_OPTION_COVER_SMILE:Ljava/lang/String; = "com.meizu.input.cover.SMILE"

.field public static final IME_OPTION_COVER_VOICE:Ljava/lang/String; = "com.meizu.input.cover.VOICE"

.field public static final IME_OPTION_KEEP_APP_DICT_STATE:Ljava/lang/String; = "com.meizu.input.keepAppDictState"

.field public static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field public static final IME_OPTION_VALUE_COVER_SMILE_MMS:Ljava/lang/String; = "mms"

.field public static final IME_OPTION_VALUE_COVER_SMILE_WEIBO:Ljava/lang/String; = "weibo"

.field public static final IME_OPTION_VARIATION_SYMBOL:Ljava/lang/String; = "com.meizu.input.variationSymbol"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/EditorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDITORINFO_TYPE_FULL:I = -0x1

.field public static final EDITORINFO_TYPE_IMEOPTIONS:I = 0x8

.field public static final EDITORINFO_TYPE_INPUTTYPE:I = 0x4

.field public static final EDITORINFO_TYPE_PRIMARY:I = 0x1

.field public static final EDITORINFO_TYPE_SECONDARY:I = 0x2

.field public static final IME_ACTION_DONE:I = 0x6

.field public static final IME_ACTION_GO:I = 0x2

.field public static final IME_ACTION_NEXT:I = 0x5

.field public static final IME_ACTION_NONE:I = 0x1

.field public static final IME_ACTION_PREVIOUS:I = 0x7

.field public static final IME_ACTION_SEARCH:I = 0x3

.field public static final IME_ACTION_SEND:I = 0x4

.field public static final IME_ACTION_UNSPECIFIED:I = 0x0

.field public static final IME_FLAG_FORCE_ASCII:I = -0x80000000

.field public static final IME_FLAG_NAVIGATE_NEXT:I = 0x8000000

.field public static final IME_FLAG_NAVIGATE_PREVIOUS:I = 0x4000000

.field public static final IME_FLAG_NO_ACCESSORY_ACTION:I = 0x20000000

.field public static final IME_FLAG_NO_ENTER_ACTION:I = 0x40000000

.field public static final IME_FLAG_NO_EXTRACT_UI:I = 0x10000000

.field public static final IME_FLAG_NO_FULLSCREEN:I = 0x2000000

.field private static final IME_HTC_FLAG_RENEWIC:I = 0x100

.field private static final IME_HTC_FLAG_TRANSFORMATION_HIDERETURNS:I = 0x2000

.field private static final IME_HTC_FLAG_TRANSFORMATION_PASSWORD:I = 0x1000

.field private static final IME_HTC_FLAG_TRANSFORMATION_SINGLELINE:I = 0x4000

.field public static final IME_MASK_ACTION:I = 0xff

.field private static final IME_MASK_FLAGS:I = -0x10000

.field private static final IME_MASK_HTC_FLAGS:I = 0xff00

.field public static final IME_NULL:I = 0x0

.field private static final IME_OPTIONS_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INPUTTYPE_NAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE_MASK_HTC_FLAGS:I = 0xf000000

.field public static final TYPE_PHONE_VARIATION_HTC_PIN_KEYBOARD:I = 0x900

.field public static final TYPE_TEXT_FLAG_SPELL_CHECKER:I = 0x800000

.field public static final TYPE_TEXT_HTC_FLAG_ENABLE_ACTION_FOR_ENTER_KEY:I = 0x2000000

.field public static final TYPE_TEXT_HTC_FLAG_HTC_IME_CURSOR_ADAPTER:I = 0x1000000

.field public static final TYPE_TEXT_VARIATION_HTC_QWERTY_SYMBOL:I = 0x9f0

.field public static final TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_CONTENT:I = 0x980

.field public static final TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_RECIPIENT:I = 0x990

.field public static final TYPE_TEXT_VARIATION_HTC_SMART_DIAL_HANDWRITING:I = 0x9a0


# instance fields
.field public actionId:I

.field public actionLabel:Ljava/lang/CharSequence;

.field public extras:Landroid/os/Bundle;

.field public fieldId:I

.field public fieldName:Ljava/lang/String;

.field public hintText:Ljava/lang/CharSequence;

.field public imeOptions:I

.field public initialCapsMode:I

.field public initialSelEnd:I

.field public initialSelStart:I

.field public inputType:I

.field public label:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public privateImeOptions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x2000

    const/16 v6, 0x1000

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 556
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    .line 557
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    .line 560
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 561
    .local v0, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const-string v2, "TYPE_CLASS_TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 562
    const-string v1, "TYPE_CLASS_NUMBER"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 563
    const/4 v1, 0x3

    const-string v2, "TYPE_CLASS_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 564
    const/4 v1, 0x4

    const-string v2, "TYPE_CLASS_DATETIME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 565
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 568
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 569
    const-string v1, "TYPE_TEXT_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 570
    const-string v1, "TYPE_TEXT_VARIATION_URI"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 571
    const/16 v1, 0x20

    const-string v2, "TYPE_TEXT_VARIATION_EMAIL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 572
    const/16 v1, 0x30

    const-string v2, "TYPE_TEXT_VARIATION_EMAIL_SUBJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 573
    const/16 v1, 0x40

    const-string v2, "TYPE_TEXT_VARIATION_SHORT_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 574
    const/16 v1, 0x50

    const-string v2, "TYPE_TEXT_VARIATION_LONG_MESSAGE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 575
    const/16 v1, 0x60

    const-string v2, "TYPE_TEXT_VARIATION_PERSON_NAME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 576
    const/16 v1, 0x70

    const-string v2, "TYPE_TEXT_VARIATION_POSTAL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 577
    const/16 v1, 0x80

    const-string v2, "TYPE_TEXT_VARIATION_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 578
    const/16 v1, 0x90

    const-string v2, "TYPE_TEXT_VARIATION_VISIBLE_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 579
    const/16 v1, 0xa0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EDIT_TEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 580
    const/16 v1, 0xb0

    const-string v2, "TYPE_TEXT_VARIATION_FILTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 581
    const/16 v1, 0xc0

    const-string v2, "TYPE_TEXT_VARIATION_PHONETIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 582
    const/16 v1, 0xd0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 583
    const/16 v1, 0xe0

    const-string v2, "TYPE_TEXT_VARIATION_WEB_PASSWORD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 584
    const/16 v1, 0x980

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_CONTENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 585
    const/16 v1, 0x990

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SHORT_MESSAGE_RECIPIENT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 586
    const/16 v1, 0x9a0

    const-string v2, "TYPE_TEXT_VARIATION_HTC_SMART_DIAL_HANDWRITING"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 587
    const/16 v1, 0x9f0

    const-string v2, "TYPE_TEXT_VARIATION_HTC_QWERTY_SYMBOL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 589
    const-string v1, "TYPE_TEXT_FLAG_CAP_CHARACTERS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 590
    const-string v1, "TYPE_TEXT_FLAG_CAP_WORDS"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 591
    const/16 v1, 0x4000

    const-string v2, "TYPE_TEXT_FLAG_CAP_SENTENCES"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 592
    const v1, 0x8000

    const-string v2, "TYPE_TEXT_FLAG_AUTO_CORRECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 593
    const/high16 v1, 0x10000

    const-string v2, "TYPE_TEXT_FLAG_AUTO_COMPLETE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 594
    const/high16 v1, 0x20000

    const-string v2, "TYPE_TEXT_FLAG_MULTI_LINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 595
    const/high16 v1, 0x40000

    const-string v2, "TYPE_TEXT_FLAG_IME_MULTI_LINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 596
    const/high16 v1, 0x80000

    const-string v2, "TYPE_TEXT_FLAG_NO_SUGGESTIONS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 597
    const/high16 v1, 0x800000

    const-string v2, "TYPE_TEXT_FLAG_SPELL_CHECKER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 599
    const/high16 v1, 0x1000000

    const-string v2, "TYPE_TEXT_HTC_FLAG_HTC_IME_CURSOR_ADAPTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 600
    const/high16 v1, 0x2000000

    const-string v2, "TYPE_TEXT_HTC_FLAG_ENABLE_ACTION_FOR_ENTER_KEY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 601
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 604
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 605
    const-string v1, "TYPE_NUMBER_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 606
    const-string v1, "TYPE_NUMBER_VARIATION_PASSWORD"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 608
    const-string v1, "TYPE_NUMBER_FLAG_SIGNED"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 609
    const-string v1, "TYPE_NUMBER_FLAG_DECIMAL"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 610
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 612
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 613
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 614
    const/16 v1, 0x900

    const-string v2, "TYPE_PHONE_VARIATION_HTC_PIN_KEYBOARD"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 615
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 618
    .restart local v0    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "(NONE)"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 619
    const-string v1, "TYPE_DATETIME_VARIATION_NORMAL"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 620
    const-string v1, "TYPE_DATETIME_VARIATION_DATE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 621
    const/16 v1, 0x20

    const-string v2, "TYPE_DATETIME_VARIATION_TIME"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 622
    sget-object v1, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    .line 625
    const-string v1, "IME_ACTION_UNSPECIFIED"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 626
    const/4 v1, 0x1

    const-string v2, "IME_ACTION_NONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 627
    const-string v1, "IME_ACTION_GO"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 628
    const/4 v1, 0x3

    const-string v2, "IME_ACTION_SEARCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 629
    const/4 v1, 0x4

    const-string v2, "IME_ACTION_SEND"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 630
    const/4 v1, 0x5

    const-string v2, "IME_ACTION_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 631
    const/4 v1, 0x6

    const-string v2, "IME_ACTION_DONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 632
    const/4 v1, 0x7

    const-string v2, "IME_ACTION_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 634
    const/high16 v1, 0x2000000

    const-string v2, "IME_FLAG_NO_FULLSCREEN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 635
    const/high16 v1, 0x4000000

    const-string v2, "IME_FLAG_NAVIGATE_PREVIOUS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 636
    const/high16 v1, 0x8000000

    const-string v2, "IME_FLAG_NAVIGATE_NEXT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 637
    const/high16 v1, 0x10000000

    const-string v2, "IME_FLAG_NO_EXTRACT_UI"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 638
    const/high16 v1, 0x20000000

    const-string v2, "IME_FLAG_NO_ACCESSORY_ACTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 639
    const/high16 v1, 0x40000000    # 2.0f

    const-string v2, "IME_FLAG_NO_ENTER_ACTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 640
    const/high16 v1, -0x80000000

    const-string v2, "IME_FLAG_FORCE_ASCII"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 642
    const/16 v1, 0x100

    const-string v2, "IME_HTC_FLAG_RENEWIC"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 643
    const-string v1, "IME_HTC_FLAG_TRANSFORMATION_PASSWORD"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 644
    const-string v1, "IME_HTC_FLAG_TRANSFORMATION_HIDERETURNS"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 645
    const/16 v1, 0x4000

    const-string v2, "IME_HTC_FLAG_TRANSFORMATION_SINGLELINE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 658
    new-instance v1, Landroid/view/inputmethod/EditorInfo$1;

    invoke-direct {v1}, Landroid/view/inputmethod/EditorInfo$1;-><init>()V

    sput-object v1, Landroid/view/inputmethod/EditorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 219
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 232
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 244
    iput-object v2, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 252
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 268
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 284
    iput v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 295
    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    return-void
.end method

.method private getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;
    .locals 8
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .local v4, "msg":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 528
    .local v2, "hasDescription":Z
    const/4 v5, 0x0

    .line 529
    .local v5, "undefinedFlag":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v6, 0x20

    if-ge v3, v6, :cond_3

    .line 530
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int v0, p2, v6

    .line 531
    .local v0, "curFlag":I
    if-eqz v0, :cond_1

    .line 532
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, "curFlagStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 534
    if-eqz v2, :cond_0

    .line 535
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/4 v2, 0x1

    .line 529
    .end local v1    # "curFlagStr":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 540
    .restart local v1    # "curFlagStr":Ljava/lang/String;
    :cond_2
    and-int/2addr v5, v0

    goto :goto_1

    .line 543
    .end local v0    # "curFlag":I
    .end local v1    # "curFlagStr":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_6

    .line 544
    if-eqz v5, :cond_4

    .line 545
    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 552
    const-string v6, "Undefined Flag=0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_5
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 548
    :cond_6
    if-nez v5, :cond_4

    .line 549
    const-string v6, "EMPTY"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public checkIfNeedToRenewIC()Z
    .locals 2

    .prologue
    .line 470
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 471
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 472
    const/4 v0, 0x1

    .line 474
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "inputType=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " imeOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " privateImeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "actionLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initialSelStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialSelEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " initialCapsMode=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hintText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fieldName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public getInfo(I)Ljava/lang/String;
    .locals 20
    .param p1, "type"    # I

    .prologue
    .line 485
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "EditorInfo { "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .local v17, "s":Ljava/lang/StringBuilder;
    and-int/lit8 v18, p1, 0x1

    if-eqz v18, :cond_0

    .line 487
    const-string v18, "packageName="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", inputType=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", imeOptions=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", privateImeOptions="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :cond_0
    and-int/lit8 v18, p1, 0x4

    if-eqz v18, :cond_2

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    and-int/lit8 v8, v18, 0xf

    .line 492
    .local v8, "inputTypeClass":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v14, v0, 0xff0

    .line 493
    .local v14, "inputTypeVariation":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    const v19, 0xfff000

    and-int v10, v18, v19

    .line 494
    .local v10, "inputTypeFlag":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v18, v0

    const/high16 v19, 0xf000000

    and-int v12, v18, v19

    .line 495
    .local v12, "inputTypeHtcFlag":I
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/SparseArray;

    .line 496
    .local v16, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->INPUTTYPE_NAMES:Ljava/util/ArrayList;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 497
    .local v9, "inputTypeClassStr":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 498
    .local v15, "inputTypeVariationStr":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 499
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "(Undefined, 0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 500
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v11

    .line 501
    .local v11, "inputTypeFlagStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, "inputTypeHtcFlagStr":Ljava/lang/String;
    const-string v18, "\n  InputType [ CLASS="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", VARIATION="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", HTC_FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .end local v8    # "inputTypeClass":I
    .end local v9    # "inputTypeClassStr":Ljava/lang/String;
    .end local v10    # "inputTypeFlag":I
    .end local v11    # "inputTypeFlagStr":Ljava/lang/String;
    .end local v12    # "inputTypeHtcFlag":I
    .end local v13    # "inputTypeHtcFlagStr":Ljava/lang/String;
    .end local v14    # "inputTypeVariation":I
    .end local v15    # "inputTypeVariationStr":Ljava/lang/String;
    .end local v16    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_2
    and-int/lit8 v18, p1, 0x8

    if-eqz v18, :cond_3

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v2, v0, 0xff

    .line 507
    .local v2, "imeOptionsAction":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    const/high16 v19, -0x10000

    and-int v4, v18, v19

    .line 508
    .local v4, "imeOptionsFlag":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v18, v0

    const v19, 0xff00

    and-int v7, v18, v19

    .line 509
    .local v7, "imeOptionsHtcFlag":I
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 510
    .local v3, "imeOptionsActionStr":Ljava/lang/String;
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, "imeOptionsFlagStr":Ljava/lang/String;
    sget-object v18, Landroid/view/inputmethod/EditorInfo;->IME_OPTIONS_NAMES:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Landroid/view/inputmethod/EditorInfo;->getDescriptionFromFlag(Landroid/util/SparseArray;I)Ljava/lang/String;

    move-result-object v5

    .line 512
    .local v5, "imeOptionsFlagHtcStr":Ljava/lang/String;
    const-string v18, "\n  IMEOptions [ ACTION="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", HTC_FLAG="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .end local v2    # "imeOptionsAction":I
    .end local v3    # "imeOptionsActionStr":Ljava/lang/String;
    .end local v4    # "imeOptionsFlag":I
    .end local v5    # "imeOptionsFlagHtcStr":Ljava/lang/String;
    .end local v6    # "imeOptionsFlagStr":Ljava/lang/String;
    .end local v7    # "imeOptionsHtcFlag":I
    :cond_3
    and-int/lit8 v18, p1, 0x2

    if-eqz v18, :cond_4

    .line 516
    const-string v18, "\n extras="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialSelStart="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialSelEnd="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", initialCapsMode=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", label="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n actionId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", actionLabel="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", fieldId="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", fieldName="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", hintText="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 521
    :cond_4
    const-string v18, " }"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public final makeCompatible(I)V
    .locals 2
    .param p1, "targetSdkVersion"    # I

    .prologue
    const v1, 0xfff000

    .line 354
    const/16 v0, 0xb

    if-ge p1, v0, :cond_0

    .line 355
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xfff

    sparse-switch v0, :sswitch_data_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 357
    :sswitch_0
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x21

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 361
    :sswitch_1
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x81

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 366
    :sswitch_2
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x12 -> :sswitch_2
        0xd1 -> :sswitch_0
        0xe1 -> :sswitch_1
    .end sparse-switch
.end method

.method public needToRenewIC()V
    .locals 3

    .prologue
    .line 479
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 480
    const-string v0, "EditorInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needToRenewIC imeOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method public recordTransformationType(Landroid/text/method/TransformationMethod;)V
    .locals 1
    .param p1, "tm"    # Landroid/text/method/TransformationMethod;

    .prologue
    .line 445
    if-nez p1, :cond_0

    .line 447
    :cond_0
    instance-of v0, p1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v0, :cond_2

    .line 448
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 453
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    instance-of v0, p1, Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_3

    .line 450
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 451
    :cond_3
    instance-of v0, p1, Landroid/text/method/SingleLineTransformationMethod;

    if-eqz v0, :cond_1

    .line 452
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0
.end method

.method public setTransformationMethodIfExists(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "eet"    # Landroid/widget/EditText;

    .prologue
    .line 457
    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0xff00

    and-int v0, v1, v2

    .line 458
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_2

    .line 461
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 462
    :cond_2
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    .line 463
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 464
    :cond_3
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_0

    .line 465
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 651
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/EditorInfo;->getInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 401
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 405
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 410
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 411
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 415
    return-void
.end method

.method private static makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "outSB"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v4, 0x22

    const/16 v0, 0x2c

    .local v0, "SPLITTER":C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, "c":C
    if-ne v1, v4, :cond_0

    const-string v3, "\"\""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v1    # "c":C
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v2    # "i":I
    :goto_2
    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static makePrivateImeOptions(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "optMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "sb":Ljava/lang/StringBuilder;
    const/16 v0, 0x2c

    .local v0, "SPLITTER":C
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, "val":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {v3, v4}, Landroid/view/inputmethod/EditorInfo;->makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/view/inputmethod/EditorInfo;->makeCsvField(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseCsvField(Ljava/lang/String;IILjava/lang/StringBuilder;)I
    .locals 6
    .param p0, "imeOptions"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outSB"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x22

    const/4 v2, 0x0

    .local v2, "inQuote":Z
    move v3, p1

    .local v3, "index":I
    :cond_0
    :goto_0
    if-ge v3, p2, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .local v1, "code":I
    const/high16 v4, 0x10000

    if-ge v1, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :goto_1
    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :sswitch_0
    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sub-int v4, v3, p1

    .end local v1    # "code":I
    :goto_2
    return v4

    .restart local v1    # "code":I
    :sswitch_1
    if-eqz v2, :cond_3

    const/4 v2, 0x0

    if-ge v3, p2, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .local v0, "c2":I
    if-ne v0, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x1

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "c2":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "code":I
    :cond_4
    sub-int v4, v3, p1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x2c -> :sswitch_0
    .end sparse-switch
.end method

.method public static splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 8
    .param p0, "privateImeOptions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "outMap cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->parseCsvField(Ljava/lang/String;IILjava/lang/StringBuilder;)I

    move-result v5

    add-int/2addr v1, v5

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    .local v3, "splitIndex":I
    if-ltz v3, :cond_2

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "true"

    invoke-interface {p1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v3    # "splitIndex":I
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method
