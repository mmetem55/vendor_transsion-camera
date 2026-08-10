.class public Lcom/transsion/camera/ui/setting/widecamera/FrontMultiplePersonSettingUISpec;
.super Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraSettingUISpec;
.source "FrontMultiplePersonSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/widecamera/AbstractWideCameraSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f030143

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f03005e

    .line 37
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f030145

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f0903f5

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f080790

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "off"

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
