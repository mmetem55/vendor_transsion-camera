.class public Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "GuidelinesUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;
    }
.end annotation


# static fields
.field private static final GUIDELINES_VIEW_HIDE:I = 0x1

.field private static final GUIDELINES_VIEW_SHOW:I = 0x3

.field private static final GUIDELINES_VIEW_UNINIT:I = 0x2

.field private static final MSG_UPDATE_GUIDELINES_VIEW:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

.field private final mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuidelinesUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 216
    new-instance p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$1;-><init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 40
    sget-object p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 24
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->doUpdateGuidelinesView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->onGuidelinesStatusChanged(Ljava/lang/String;)V

    return-void
.end method

.method private doUpdateGuidelinesView(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->showView()V

    goto :goto_0

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->hideView()V

    :goto_0
    return-void
.end method

.method private hideView()V
    .locals 3

    .line 168
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 170
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private onGuidelinesStatusChanged(Ljava/lang/String;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "on"

    .line 227
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method private showView()V
    .locals 3

    .line 175
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->updateRootLayoutRect()V

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 186
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 193
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 46
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "doCreateEntryView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v0, 0x7f0c00c2

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09022f

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    const/4 p0, 0x4

    .line 49
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_guidelines"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_0

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz p0, :cond_0

    const/4 p1, 0x4

    .line 211
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 96
    sget-object p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->onGuidelinesStatusChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 104
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p1, :cond_0

    .line 106
    sget-object p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_guidelines"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mGuidelinesView:Lcom/transsion/camera/ui/setting/guideline/GuidelinesView;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 3

    .line 84
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_guidelines"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mHandler:Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 89
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->doUpdateGuidelinesView(I)V

    return-void
.end method

.method public updateCameraState(I)V
    .locals 3

    .line 199
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCameraState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 200
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_1

    .line 201
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 203
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->doUpdateGuidelinesView(I)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 114
    sget-object v0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewRect, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preview view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/guideline/GuidelinesUI;->updateRootLayoutRect()V

    return-void
.end method
