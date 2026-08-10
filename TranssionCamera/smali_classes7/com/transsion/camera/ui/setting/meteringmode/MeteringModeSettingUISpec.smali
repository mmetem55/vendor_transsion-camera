.class public Lcom/transsion/camera/ui/setting/meteringmode/MeteringModeSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "MeteringModeSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_metering_mode"

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f030095

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f030096

    .line 41
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryExtDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    const p0, 0x7f030097

    .line 46
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const p0, 0x7f030098

    .line 36
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f0806ff

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f1001d0

    .line 21
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
