.class public Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.source "BaseTeleZoomItemUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$TeleCameraResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mNeedShowHint:Z

.field private mResources:Landroid/content/res/Resources;

.field private mShowZoomValue:Ljava/lang/String;

.field private final mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$28nBN4P1-YDWAsoEfz2TC5Akq2I(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Landroid/content/res/Resources;)V
    .locals 1

    .line 113
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mNeedShowHint:Z

    .line 53
    new-instance p1, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 77
    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 114
    iput-object p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mResources:Landroid/content/res/Resources;

    const p1, 0x7f05009e

    .line 115
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 44
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mNeedShowHint:Z

    return p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mNeedShowHint:Z

    return p1
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->showHint()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)Lcom/transsion/camera/app/common/ui/HintInfo;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    return-object p0
.end method

.method private getShowingZoom(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 173
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShowZoom exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p1, 0x64

    .line 177
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue(I)I

    move-result p1

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "value_wide_camera_item_wide_cam_seleccted"

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "value_wide_camera_item_micro_cam_seleccted"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "value_wide_camera_item_first_zoom_seleccted"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->restoreDefaultValue()V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_5

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_0

    :cond_2
    const-string p1, "value_zoom_enable_wide"

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    :cond_3
    const-string p1, "value_zoom_enable_tele"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 85
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string p2, "tele_exchange"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    const-string p1, "value_zoom_disable_tele"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 90
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string p2, "off"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private needResetUI()Z
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needUpdateEntryView()Z
    .locals 4

    .line 253
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->baseZoomCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    .line 257
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomValue()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    .line 259
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needUpdateEntryView exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method private showHint()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->getCurrentAsdHint()Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 288
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100301

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f050056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 295
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method


# virtual methods
.method public getEntryViewType()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;
    .locals 0

    .line 138
    sget-object p0, Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;->TYPE_TEXT:Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI$WideCameraItemType;

    return-object p0
.end method

.method protected init()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "100"

    .line 123
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 125
    :goto_1
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->needUpdateEntryView()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 126
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 130
    :goto_3
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mNeedShowHint:Z

    .line 132
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mIsTeleCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsSATCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIs2XBlurCamera = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 308
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_1

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onClickEvent()Z
    .locals 8

    .line 186
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(I)V

    .line 187
    sget-object v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickEvent mZoomValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsTeleCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSATCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v2, "100"

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->updateTextEntryView()V

    goto/16 :goto_3

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsSATCamera:Z

    const-string v2, "value_wide_camera_item_second_zoom_seleccted"

    const-string v3, "key_wide_camera_item_seleccted"

    if-eqz v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->showHint()V

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->startSelectedAnimation(Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 197
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v7}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->updateTextEntryView()V

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-nez v0, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->showCenterZoomRatio()V

    goto/16 :goto_3

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 211
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mSmoothZoomNeed:Z

    if-eqz v0, :cond_3

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getLongFocusZoomString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 216
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->updateTextEntryView()V

    goto :goto_3

    .line 219
    :cond_4
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsBlurCamera:Z

    const-string v4, "tele_exchange"

    if-eqz v0, :cond_6

    .line 220
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 221
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->startSelectedAnimation(Landroid/view/View;)V

    .line 223
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const-string v4, "2x_dual_exchange"

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 227
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 229
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 231
    invoke-virtual {p0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 232
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIs2XBlurCamera:Z

    if-eqz v0, :cond_7

    return v1

    .line 235
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->startSelectedAnimation(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mOverrideClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-interface {v0, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    .line 240
    invoke-virtual {p0, v3, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return v1
.end method

.method protected onLongClickEvent()Z
    .locals 2

    .line 301
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_tele_camera_item_long_click"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "value_tele_camera_item_long_click_in_tele"

    .line 302
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public restoreDefaultValue()V
    .locals 2

    const-string v0, "100"

    .line 247
    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->updateTextEntryView()V

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 143
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$TeleCameraResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$TeleCameraResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_zoom_limit_monitor"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->registerKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->endHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_zoom_limit_monitor"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_wide_camera_item_seleccted"

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unRegisterKeyToMonitor(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 157
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->unInit()V

    return-void
.end method

.method public updateEntryValue(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mIsTeleCamera:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->needUpdateEntryView()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->needResetUI()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->restoreDefaultValue()V

    goto :goto_1

    .line 270
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->updateTextEntryView()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected updateTextEntryView()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->mShowZoomValue:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->getShowingZoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    sget-object v1, Lcom/transsion/camera/ui/setting/zoom/BaseTeleZoomItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTextEntryView showingZoom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getZoomRatio(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
