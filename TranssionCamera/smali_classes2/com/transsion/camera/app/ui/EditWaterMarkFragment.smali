.class public Lcom/transsion/camera/app/ui/EditWaterMarkFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "EditWaterMarkFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;,
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;,
        Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mBrandSwitchButton:Landroid/widget/Switch;

.field mBrandTextView:Landroid/widget/TextView;

.field mBrandWaterMark:Landroid/widget/RelativeLayout;

.field mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mCityInfo:Ljava/lang/String;

.field mCitySwitchButton:Landroid/widget/Switch;

.field mCityTextView:Landroid/widget/TextView;

.field mCityWaterMark:Landroid/widget/RelativeLayout;

.field mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

.field private mEditWaterMarkUIItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

.field private mHintInfo:Ljava/lang/String;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

.field public mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mPermissionRequest:Z

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field mShowBrandWaterMark:Landroid/widget/TextView;

.field mShowCityWaterMark:Landroid/widget/TextView;

.field mShowTextWaterMark:Landroid/widget/TextView;

.field mShowTimeWaterMark:Landroid/widget/TextView;

.field mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

.field mSortWaterMark:Landroid/widget/RelativeLayout;

.field mSortWaterMarkTitle:Landroid/widget/TextView;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field mTextSwitchButton:Landroid/widget/Switch;

.field mTextTextView:Landroid/widget/TextView;

.field mTextWaterMark:Landroid/widget/LinearLayout;

.field private mTextWaterMarkInfo:Ljava/lang/String;

.field mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field mTextWaterMarkSummary:Landroid/widget/TextView;

.field private mTimeInfo:Ljava/lang/String;

.field mTimeSwitchButton:Landroid/widget/Switch;

.field mTimeTextView:Landroid/widget/TextView;

.field mTimeWaterMark:Landroid/widget/RelativeLayout;

.field mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

.field private mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;


# direct methods
.method public static synthetic $r8$lambda$2RjHCKgsfoESzqkgsRyCIIcP4MM(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$showCustomizeDialog$8(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$667hoVtAz-LEE2EsV-QCaN7omo0(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BfJhFng2EZZn4eW8klJRHyv2b98(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HZSLHFxl5SG16InVellgcgaF5Tc(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Psd0l-RhDtZRV17LKboq5ookgiQ(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$showCustomizeDialog$9(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SMG-DUcM3AqNgUN4dglcS6VVOnw(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$setSortWaterMarkEnable$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l_OQ-eUfOOg2JO2v6gj-0Fcc4g4(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m61NhCZJhHW1arMElCW3hmJTlww(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$setSortWaterMarkEnable$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wmbQXzgwoaxTb8X-ffQlT_IhiaI(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$onViewCreated$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yNyP1n2CwTFqrUGdfwyBEfl652o(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->lambda$setSortWaterMarkUnEnable$7(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 86
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 97
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Lcom/transsion/camera/app/common/location/LocationManager;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    return-void
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 85
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)Ljava/lang/String;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfo(I)V

    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 0

    .line 371
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 4

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 207
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 208
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_time_watermark"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v2, "on"

    const-string v3, "off"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 211
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 212
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :goto_2
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1(Landroid/view/View;)V
    .locals 5

    .line 222
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 223
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "key_city_watermark"

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p1

    if-nez p1, :cond_1

    .line 227
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/permission/PermissionManager;->requestCameraLocationPermissions()Z

    .line 228
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    return-void

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 232
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const-string v1, "key_edit_watermark"

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 234
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 235
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const/16 v0, 0x65

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 237
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x5

    .line 238
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 241
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$2(Landroid/view/View;)V
    .locals 4

    .line 247
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 248
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_brand_watermark"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 250
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 251
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 252
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 254
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 255
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 259
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 260
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$3(Landroid/view/View;)V
    .locals 4

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isClickable()Z

    move-result p1

    const-string v0, "on"

    const-string v1, "off"

    const-string v2, "key_text_watermark"

    if-nez p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 273
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {p0, v2, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    .line 276
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 277
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 278
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 279
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 280
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 281
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTextInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 285
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    :goto_1
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$4(Landroid/view/View;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->showCustomizeDialog()V

    return-void
.end method

.method private static synthetic lambda$setSortWaterMarkEnable$5(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$setSortWaterMarkEnable$6(Landroid/view/View;)V
    .locals 1

    .line 383
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isResumed()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 387
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 388
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 389
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 390
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 391
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 392
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;->onEnterSortWaterMark()V

    return-void
.end method

.method private static synthetic lambda$setSortWaterMarkUnEnable$7(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$8(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 408
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    .line 409
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 411
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 414
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    :cond_1
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_watermark_info"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 418
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_2

    .line 419
    sget-object p2, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 421
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEFAULT_TEXT"

    const-string v0, "true"

    invoke-virtual {p0, p2, v0, p1, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$showCustomizeDialog$9(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 424
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->dismissOprate(Landroid/content/DialogInterface;)V

    .line 425
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p0, :cond_0

    .line 426
    sget-object p1, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    :cond_0
    return-void
.end method

.method private removeTextView()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "key_edit_watermark_sort"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setSortWaterMarkEnable()V
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private setSortWaterMarkUnEnable()V
    .locals 1

    .line 398
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showCustomizeDialog()V
    .locals 6

    .line 403
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEFAULT_TEXT"

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 404
    new-instance v2, Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f10038f

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/dialog/InputDialog;->setTitle(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v2

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    .line 406
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x0

    .line 405
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/transsion/widgetslib/dialog/InputDialog;->setInputNum(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$OnInputNumListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const v2, 0x7f10038e

    new-instance v3, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda7;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    .line 407
    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    const v2, 0x7f10038d

    new-instance v3, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    .line 423
    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 429
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->needHingeStateManager(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 430
    const-class v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    const-string v4, "requireHungStatus"

    invoke-static {v0, v4, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    .line 436
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 437
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextDirection(I)V

    .line 438
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 440
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v3, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 442
    :cond_3
    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 463
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private updateCityInfo(I)V
    .locals 5

    .line 529
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateCityInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const/4 v2, 0x2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 531
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkUnEnable()V

    .line 534
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    const-string v3, "key_edit_watermark"

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 536
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfoFromLocation(Landroid/location/Location;)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/location/LocationManager;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_3

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentLocation = null lastKnownLocation = null retry = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-lez p1, :cond_2

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 543
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$2;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 553
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    .line 554
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit8 p1, p1, -0x1

    .line 555
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 562
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLocation = null  lastKnownLocation = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateCityInfoFromLocation(Landroid/location/Location;)V

    :goto_0
    return-void
.end method

.method private updateCityInfoFromLocation(Landroid/location/Location;)V
    .locals 4

    .line 569
    invoke-static {p1}, Lcom/transsion/camera/utils/LocationUtil;->getLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 577
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/LocationUtil;->getAddress(Landroid/location/Location;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    sget-object p1, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "Location getAddress = null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 581
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    .line 583
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location getAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 584
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 585
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEditWaterMarkItem()V
    .locals 6

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_city_watermark"

    invoke-virtual {v0, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_text_watermark"

    invoke-virtual {v0, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_brand_watermark"

    invoke-virtual {v0, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 497
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 499
    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 500
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 501
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 502
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    .line 503
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    return-void
.end method

.method private updateWaterMarkLayout()V
    .locals 13

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_edit_watermark_sort"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_city_watermark_info"

    if-eqz v0, :cond_6

    .line 296
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "sans-serif-medium"

    const/4 v4, 0x0

    .line 302
    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 304
    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_5

    aget-char v6, v0, v4

    add-int/lit8 v6, v6, -0x30

    const/4 v7, -0x1

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v9, -0x2

    const v10, 0x7f07012c

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    const/4 v12, 0x2

    if-eq v6, v12, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto/16 :goto_2

    .line 349
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    .line 350
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 351
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 352
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v8

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 353
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getBrandWatermark()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 354
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 355
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    .line 356
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0701a5

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    .line 357
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 358
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 334
    :cond_1
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    .line 335
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 336
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 337
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 341
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 342
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 344
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 345
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_1
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 320
    :cond_3
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    .line 321
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 323
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 324
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 325
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 327
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 328
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 329
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v1, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 330
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 307
    :cond_4
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    .line 308
    iget-object v12, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 310
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 311
    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 312
    iget-object v9, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 314
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 315
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTimeInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 363
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSortWaterMarkEnable()V

    goto :goto_3

    .line 365
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    .line 366
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    :goto_3
    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .locals 0

    return-void
.end method

.method getBrandWatermark()I
    .locals 0

    .line 814
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f08046b

    return p0

    :cond_0
    const p0, 0x7f08046a

    return p0
.end method

.method public getEditWaterMarkUIItem()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    return-object p0
.end method

.method protected getPreferenceResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getShowCityInfo()Ljava/lang/String;
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getShowTimeInfo()Ljava/lang/String;
    .locals 0

    .line 591
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemTime()Ljava/lang/String;
    .locals 3

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 523
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-direct {p0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 524
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 525
    invoke-virtual {p0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextInfo()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 1

    .line 517
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getSystemTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeInfo:Ljava/lang/String;

    return-object v0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .locals 0

    const p0, 0x7f090160

    .line 727
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    const p1, 0x7f10010f

    .line 728
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 729
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 0

    .line 712
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 156
    new-instance p3, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 157
    new-instance p3, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    const p0, 0x7f0c0072

    const/4 p3, 0x0

    .line 159
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->callOnClick()Z

    .line 693
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100390

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 694
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mToastInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v1, "key_edit_watermark_update"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDialog:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    .line 698
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->callOnClick()Z

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 701
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 702
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 703
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 5

    .line 677
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 679
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 680
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 682
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEditWaterMarkUIItems = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_edit_watermark_item"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_city_watermark_info"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 685
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_text_watermark_info"

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 686
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    const-string v2, "key_language_watermark"

    invoke-virtual {v0, v2, v1, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onResume()V
    .locals 9

    .line 627
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    .line 628
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 629
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_time_watermark"

    const-string v3, "off"

    .line 628
    invoke-virtual {v0, v2, v3, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 630
    iget-object v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 631
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_city_watermark"

    .line 630
    invoke-virtual {v2, v5, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 632
    iget-object v4, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 633
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_brand_watermark"

    .line 632
    invoke-virtual {v4, v7, v3, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 634
    iget-object v6, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 635
    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_text_watermark"

    .line 634
    invoke-virtual {v6, v8, v3, v7}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 637
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 638
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 639
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 640
    iget-object v7, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v7, v6}, Landroid/widget/Switch;->setChecked(Z)V

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v6, :cond_0

    if-nez v4, :cond_0

    .line 643
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 645
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mEditWaterMarkUIItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 648
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600b3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 649
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$3;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$3;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v3, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 661
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v1, v3, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    const-string v3, "key_edit_watermark"

    invoke-virtual {v0, v1, v3}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    .line 663
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->removeTextView()V

    .line 664
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkItem()V

    .line 665
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 667
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    .line 668
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 669
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 672
    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mPermissionRequest:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 164
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 165
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100339

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080604

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 166
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1000cb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p2, v0, v1, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 167
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f100309

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p2, v0, v1, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 168
    new-instance p2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f10009e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {p2, v0, v1, v3}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMarkItem:Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    const p2, 0x7f090425

    .line 169
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTimeWaterMark:Landroid/widget/TextView;

    const p2, 0x7f090421

    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowCityWaterMark:Landroid/widget/TextView;

    const p2, 0x7f090423

    .line 171
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowTextWaterMark:Landroid/widget/TextView;

    const p2, 0x7f09041f

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowBrandWaterMark:Landroid/widget/TextView;

    const p2, 0x7f0904b1

    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    const p2, 0x7f0900ea

    .line 174
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    .line 175
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/IAppUI;->isVoiceInteraction()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/permission/PermissionManager;->checkCameraLocationPermissions()Z

    move-result p2

    if-nez p2, :cond_1

    .line 176
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const p2, 0x7f0900ae

    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    const-string p2, "persist.sys.fans.support"

    const-string v1, "0"

    .line 179
    invoke-static {p2, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    .line 180
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 181
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_brand_watermark"

    const-string v4, "off"

    invoke-virtual {p2, v3, v4, v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    const p2, 0x7f09049a

    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    const p2, 0x7f09049b

    .line 185
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    const p2, 0x7f090167

    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    .line 187
    invoke-static {p2}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    .line 188
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f100308

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    .line 189
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_text_watermark_info"

    const-string v2, ""

    invoke-virtual {p2, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkSummary:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHintInfo:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMarkInfo:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0904b0

    .line 191
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f0900e9

    .line 192
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCitySwitchButton:Landroid/widget/Switch;

    const p2, 0x7f0900ad

    .line 193
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f090497

    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    const p2, 0x7f090168

    .line 195
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    const p2, 0x7f09016a

    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMarkTitle:Landroid/widget/TextView;

    .line 197
    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkHandler;

    .line 198
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "edit_watermark_fragment_location_thread"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p2, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;Landroid/os/Looper;Lcom/transsion/camera/app/ui/EditWaterMarkFragment$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationHandler:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$EditWaterMarkLocationHandler;

    const p2, 0x7f090165

    .line 202
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    .line 203
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateWaterMarkLayout()V

    .line 205
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/EditWaterMarkFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .locals 0

    return-void
.end method

.method public setIFragmentControl(Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mIFragmentControl:Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;

    return-void
.end method

.method public setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method protected unInitViews()V
    .locals 0

    return-void
.end method

.method public updateEditWaterMarkUIItemsSorted()V
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mSortWaterMark:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 604
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTimeWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 605
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mCityWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mBrandWaterMark:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextWaterMark:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mTextSwitchButton:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 609
    iget-object v0, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->mShowWaterMarkLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateWaterMarkLayout()V

    :cond_1
    return-void
.end method
