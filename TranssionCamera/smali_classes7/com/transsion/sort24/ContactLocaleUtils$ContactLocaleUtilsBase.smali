.class Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;
.source "ContactLocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sort24/ContactLocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field protected final mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mAlphabeticIndexBucketCount:I

.field private final mNumberBucketIndex:I

.field private final mUsePinyinTransliterator:Z


# direct methods
.method public constructor <init>(Lcom/transsion/sort24/LocaleSet;)V
    .locals 5

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->shouldPreferSimplifiedChinese()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 107
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/16 v2, 0x12c

    .line 108
    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex;->setMaxLabelCount(I)Landroid/icu/text/AlphabeticIndex;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getPrimaryLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p1}, Lcom/transsion/sort24/LocaleSet;->getAllLocales()Landroid/os/LocaleList;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 113
    :goto_0
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 117
    :goto_1
    invoke-static {}, Lcom/transsion/sort24/ContactLocaleUtils;->access$0()[Ljava/util/Locale;

    move-result-object p1

    array-length p1, p1

    if-lt v2, p1, :cond_0

    .line 120
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 121
    invoke-virtual {p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketCount()I

    move-result p1

    iput p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 p1, p1, -0x1

    .line 122
    iput p1, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/transsion/sort24/ContactLocaleUtils;->access$0()[Ljava/util/Locale;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-static {v1, p1, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static addLabels(Landroid/icu/text/AlphabeticIndex;Ljava/util/Locale;Landroid/util/ArraySet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/AlphabeticIndex;",
            "Ljava/util/Locale;",
            "Landroid/util/ArraySet<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 127
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 130
    invoke-virtual {p0, v0}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 131
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getBucketCount()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndexBucketCount:I

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getBucketIndex(Ljava/lang/String;)I
    .locals 6

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-lt v2, v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 159
    invoke-static {v4}, Ljava/lang/Character;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v3

    goto :goto_1

    .line 162
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_6

    const/16 v5, 0x28

    if-eq v4, v5, :cond_6

    const/16 v5, 0x29

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_6

    const/16 v5, 0x23

    if-eq v4, v5, :cond_6

    :goto_1
    if-eqz v1, :cond_2

    .line 171
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    return p0

    .line 181
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mUsePinyinTransliterator:Z

    if-eqz v0, :cond_3

    .line 182
    invoke-static {}, Lcom/transsion/sort24/HanziToPinyin;->getInstance()Lcom/transsion/sort24/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/sort24/HanziToPinyin;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result p1

    if-gez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 188
    :cond_4
    iget p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-lt p1, p0, :cond_5

    add-int/2addr p1, v3

    :cond_5
    return p1

    .line 168
    :cond_6
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getBucketLabel(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget v0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mNumberBucketIndex:I

    if-ne p1, v0, :cond_1

    const-string p0, "#"

    return-object p0

    :cond_1
    if-le p1, v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 215
    :cond_2
    iget-object p0, p0, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->mAlphabeticIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {p0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public getLabels()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketCount()I

    move-result v0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 222
    :cond_0
    invoke-virtual {p0, v2}, Lcom/transsion/sort24/ContactLocaleUtils$ContactLocaleUtilsBase;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
