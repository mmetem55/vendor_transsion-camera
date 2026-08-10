.class public abstract Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "OneClickSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createSupportedEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 46
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    return-void
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    .line 28
    sget v2, Lcom/transsion/camera/app/common/R$string;->setting_on_entry:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 29
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntries:[Ljava/lang/String;

    sget v2, Lcom/transsion/camera/app/common/R$string;->setting_off_entry:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    .line 31
    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_on_entry_value:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntryValues:[Ljava/lang/String;

    sget v1, Lcom/transsion/camera/app/common/R$string;->setting_off_entry_value:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initPositiveText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mPositiveText:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initNegativeText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mNegativeText:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initDialogTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mDialogTitle:Ljava/lang/String;

    return-void
.end method

.method protected initDialogTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method protected initNegativeText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initPositiveText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
