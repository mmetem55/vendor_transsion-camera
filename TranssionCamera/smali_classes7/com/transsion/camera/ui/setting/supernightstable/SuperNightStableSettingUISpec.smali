.class public Lcom/transsion/camera/ui/setting/supernightstable/SuperNightStableSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "SuperNightStableSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_super_night_stable"

    .line 24
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f0300e3

    .line 48
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f090408

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0808f3

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1002f2

    .line 33
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "off"

    .line 53
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
