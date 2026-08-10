.class public Lcom/transsion/camera/ui/setting/settingsentry/SettingsEntryItemUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;
.source "SettingsEntryItemUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_settings_entry"

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryViewId()I
    .locals 0

    const p0, 0x7f090404

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f08080e

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f10029d

    .line 32
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f10029d

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
