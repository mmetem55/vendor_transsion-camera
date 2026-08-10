.class public abstract Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;
.super Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
.source "NoPresetListSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x4

    .line 24
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;-><init>(Ljava/lang/String;ILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected abstract createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

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

    .line 38
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;->createSupportEntryValues(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;->createSupportEntries([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntries:[Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryValues:[Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;->createSupportEntryDrawables([Ljava/lang/String;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mSupportedEntryDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected final init(Landroid/content/res/Resources;)V
    .locals 1

    .line 29
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;->initTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mTitle:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mMessage:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/setting/spec/NoPresetListSettingUISpec;->initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->mEntrySummaries:[Ljava/lang/String;

    return-void
.end method

.method protected abstract initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
.end method
