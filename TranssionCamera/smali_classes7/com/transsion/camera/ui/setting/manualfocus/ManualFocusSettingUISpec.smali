.class public Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.source "ManualFocusSettingUISpec.java"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_manual_focus"

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method protected createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 47
    array-length v0, p1

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 51
    aget-object v4, p1, v3

    const-string v5, "auto"

    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f1001b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_0
    const-string v5, "continuous-picture"

    .line 54
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f1001af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, -0x2

    int-to-float v5, v5

    const v6, 0x3ca3d70a    # 0.02f

    mul-float/2addr v5, v6

    if-ne v3, v4, :cond_2

    .line 60
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f1001b3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 62
    :cond_2
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v6, v2

    const-string v5, "%.2f"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 71
    array-length p1, p1

    .line 72
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/manualfocus/ManualFocusSettingUISpec;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08065e

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 78
    :cond_0
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
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

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 40
    new-array p0, p0, [Ljava/lang/String;

    .line 41
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

    const-string p0, "AF"

    return-object p0
.end method
