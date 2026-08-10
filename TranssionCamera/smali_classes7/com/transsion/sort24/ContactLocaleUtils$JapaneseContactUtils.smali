.class Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;
.super Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sort24/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JapaneseContactUtils"
.end annotation


# static fields
.field private static final CJ_BLOCKS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character$UnicodeBlock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMiscBucketIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 258
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/sort24/LocaleSet;)V
    .locals 0

    .line 243
    invoke-direct {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/transsion/sort24/LocaleSet;)V

    const-string p1, "\u65e5"

    .line 248
    invoke-super {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    return-void
.end method

.method private static isChineseOrJapanese(I)Z
    .locals 1

    .line 282
    sget-object v0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->CJ_BLOCKS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getBucketCount()I
    .locals 0

    .line 306
    invoke-super {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 2

    .line 291
    invoke-super {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketIndex(Ljava/lang/String;)I

    move-result v0

    .line 292
    iget v1, p0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 293
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    invoke-static {p1}, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->isChineseOrJapanese(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 294
    :cond_0
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-le v0, p0, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1

    .line 317
    iget v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$JapaneseContactUtils;->mMiscBucketIndex:I

    if-ne p1, v0, :cond_0

    const-string p0, "\u4ed6"

    return-object p0

    :cond_0
    if-le p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 322
    :cond_1
    invoke-super {p0, p1}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
