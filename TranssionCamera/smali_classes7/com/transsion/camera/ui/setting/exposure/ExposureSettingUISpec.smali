.class public Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "ExposureSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_exposure"

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method

.method private convertEntryValueToEntryString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 73
    :cond_0
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 75
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p1, p2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%d"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 77
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, p2, v0

    const-string p0, "%+.2f"

    invoke-static {p1, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    array-length v0, p1

    .line 44
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    .line 47
    aget-object v2, p1, v3

    add-int/lit8 v4, v0, -0x1

    .line 48
    aget-object p1, p1, v4

    .line 49
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Rational;->intValue()I

    move-result p1

    .line 50
    invoke-static {v2}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Rational;->intValue()I

    move-result v2

    if-le p1, v2, :cond_0

    sub-int/2addr p1, v2

    .line 52
    div-int p1, v0, p1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    aget-object v2, v2, v3

    .line 57
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureSettingUISpec;->convertEntryValueToEntryString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 58
    aput-object v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 35
    new-array p0, p0, [Ljava/lang/String;

    .line 36
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const-string p0, "EV"

    return-object p0
.end method
