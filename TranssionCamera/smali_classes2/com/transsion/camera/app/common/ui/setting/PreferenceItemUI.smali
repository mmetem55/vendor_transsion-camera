.class public Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;
.super Ljava/lang/Object;
.source "PreferenceItemUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;,
        Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final WIDTH_ICON_FIT:I

.field private mCommonRes:Landroid/graphics/drawable/Drawable;

.field private mCurrentEntryValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

.field private final mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

.field private mIsSellingPoint:Z

.field private mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mPointRes:Landroid/graphics/drawable/Drawable;

.field private mPreference:Landroid/preference/Preference;

.field private mSellingPointSp:Landroid/content/SharedPreferences;

.field private mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public static synthetic $r8$lambda$nNTRo2IJ0OVDXjZeow4D8Zn_OHo(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Landroid/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->lambda$doCreatePreference$0(Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PreferenceItemUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->WIDTH_ICON_FIT:I

    .line 75
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 446
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 460
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$2;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 473
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$3;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 100
    new-instance p1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/setting/ISetting;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->doValueChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    return-void
.end method

.method private createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;
    .locals 2

    .line 598
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 p3, 0x4

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/UIUtils;->dp2Px(Landroid/content/res/Resources;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    return-object p0
.end method

.method private createSupportEntries()Z
    .locals 5

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 362
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mDeviceSetting\'s support is null!"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentStreamIds()[I

    move-result-object v3

    .line 369
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4, v2, v3, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->createSupportedEntries(Ljava/lang/String;[ILjava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 372
    array-length v0, v0

    if-nez v0, :cond_1

    .line 373
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "support value is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private doCreatePreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 7

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getType()I

    move-result v0

    const-string v1, "SellingPoint"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_15

    if-eq v0, v3, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 281
    new-instance p0, Landroid/preference/Preference;

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 241
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v4

    .line 244
    array-length v2, v2

    if-le v2, v3, :cond_4

    array-length v2, v4

    if-gt v2, v3, :cond_1

    goto :goto_1

    .line 248
    :cond_1
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;

    .line 249
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getCustomFragment()Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/preference/FragmentPreference;->seCustomFragment(Landroid/app/Fragment;)V

    .line 252
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 254
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object v1

    .line 193
    :cond_5
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 194
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 196
    array-length v6, v4

    if-le v6, v3, :cond_9

    array-length v6, v5

    if-gt v6, v3, :cond_6

    goto :goto_3

    .line 200
    :cond_6
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    .line 201
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 205
    invoke-virtual {v0, v4}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v0, v5}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 209
    sget v1, Lcom/transsion/camera/app/common/R$string;->btn_negative:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/preference/OSDialogPreference;->setNegativeButtonText(I)V

    .line 211
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 213
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p0

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-object v0

    :cond_9
    :goto_3
    return-object v1

    .line 169
    :cond_a
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v4

    .line 170
    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v5

    .line 172
    array-length v4, v4

    if-le v4, v3, :cond_f

    array-length v4, v5

    if-gt v4, v3, :cond_b

    goto :goto_5

    .line 176
    :cond_b
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;

    .line 177
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 181
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_d

    .line 183
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->isShowPoint(ZLandroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v2, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createIconWithPoint(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 186
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 188
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->setEntryDrawables([Landroid/graphics/drawable/Drawable;)V

    :cond_e
    return-object v0

    :cond_f
    :goto_5
    return-object v1

    .line 218
    :cond_10
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->setKey(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 225
    :cond_11
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getPositiveText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 228
    :cond_12
    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "OK"

    .line 232
    :cond_13
    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getNegativeText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDialogTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    return-object p1

    .line 258
    :cond_15
    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/PreferenceItemUiManager;->create(ILandroid/content/Context;)Landroid/preference/Preference;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v2

    .line 261
    array-length v0, v0

    if-le v0, v3, :cond_18

    array-length v0, v2

    if-gt v0, v3, :cond_16

    goto :goto_7

    .line 264
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    :cond_17
    new-instance v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object p1

    :cond_18
    :goto_7
    return-object v1
.end method

.method private doValueChange(Ljava/lang/String;)V
    .locals 4

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    instance-of v1, v0, Landroid/preference/DialogPreference;

    if-eqz v1, :cond_1

    .line 501
    check-cast v0, Landroid/preference/DialogPreference;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 508
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createSupportEntries()Z

    .line 509
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/ArrayUtils;->equals([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 513
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_3

    .line 514
    :cond_2
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 515
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceEntry()V

    .line 516
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    :cond_3
    if-eqz v1, :cond_5

    .line 519
    array-length p1, v1

    if-gt p1, v2, :cond_4

    goto :goto_0

    .line 522
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->showPreference()V

    goto :goto_1

    .line 520
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->hidePreference()V

    .line 525
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceItemSellingPoint"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 526
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSellingPointSp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 527
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_6

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCommonRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method private exitSettingFragment(Ljava/lang/String;)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    if-eqz p0, :cond_0

    .line 564
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;->exitSettingFragment(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 0

    .line 608
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 609
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hidePreference()V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 538
    sget-object v1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hidePreference because preference EntryValues, parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 540
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    const/4 p0, 0x0

    .line 541
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 542
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isShowPoint(ZLandroid/content/SharedPreferences;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferenceItemSellingPoint"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$doCreatePreference$0(Landroid/preference/Preference;)Z
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 271
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->exitSettingFragment(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private setupPreference()V
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceEntry()V

    .line 381
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->updatePreferenceUI()V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSwitchPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 384
    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_1

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mListPreferenceListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 386
    :cond_1
    instance-of v1, v0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    if-eqz v1, :cond_2

    .line 387
    check-cast v0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDialogPreferenceListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->setDialogListener(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showPreference()V
    .locals 4

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-virtual {v0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    .line 552
    sget-object v1, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPreference because preference EntryValues, parent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 553
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 555
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    const/4 p0, 0x0

    .line 556
    :goto_0
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 557
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOrder(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updatePreferenceEntry()V
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 394
    check-cast v0, Landroid/preference/SwitchPreference;

    const-string v1, "on"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 396
    :cond_0
    instance-of v0, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 400
    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updatePreferenceEntry] supportedEntries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , supportedEntryValues="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v2, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 402
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/preference/OSListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 405
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    check-cast p0, Lcom/transsion/widgetslib/preference/OSListPreference;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/preference/OSListPreference;->setValueIndex(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePreferenceUI()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v1, v0, Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 416
    array-length v1, v0

    if-lez v1, :cond_2

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 420
    :cond_0
    instance-of v1, v0, Lcom/transsion/widgetslib/preference/OSListPreference;

    if-eqz v1, :cond_1

    .line 421
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v1

    .line 424
    sget-object v2, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updatePreferenceUI] supportedEntries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " , supportedEntryValues="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntrySummaries()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    array-length v1, v0

    if-lez v1, :cond_2

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public createPreference(Landroid/content/Context;)Landroid/preference/Preference;
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->doCreatePreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->setupPreference()V

    .line 149
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreference()Landroid/preference/Preference;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 0

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 1

    .line 286
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 288
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 294
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->createSupportEntries()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getIndex(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 301
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 302
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mCurrentEntryValue:Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_2

    .line 304
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_3

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 310
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setIsSellingPoint(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mIsSellingPoint:Z

    return-void
.end method

.method public setPointRes(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPointRes:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setSettingFragmentControl(Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingFragmentControl:Lcom/transsion/camera/app/common/IAppUIControl$ISettingFragmentControl;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mHandler:Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/PreferenceItemUI;->mPreference:Landroid/preference/Preference;

    instance-of v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    if-eqz v0, :cond_1

    .line 138
    check-cast p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->hideDialog()V

    :cond_1
    return-void
.end method
