.class public Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;
.super Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;
.source "GoogleLensTopBarItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private isGoogleLensAuthorized:Z

.field mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$LHW7XrXzFR1QdDUY5Ke7TxcOlRQ(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$evdInCvrP_U63wcp3bJDbcF1to8(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .locals 0

    .line 29
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->isGoogleLensAuthorized:Z

    .line 71
    new-instance p1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->isGoogleLensAuthorized:Z

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "key_google_lens_visible"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 75
    new-instance p2, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 113
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGoogleLensEvent eventKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-nez p0, :cond_0

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mStatusMonitor is null | eventValue: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    .line 35
    iget-boolean p2, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->isGoogleLensAuthorized:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string p3, "key_google_lens_visible"

    invoke-virtual {p1, p3, p2}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_google_lens"

    return-object p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->notifyCameraOperateAction(I)V

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    sget-object p1, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "on google lens clicked"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "key_google_lens_click"

    const-string v0, "google_lens_clicked"

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->sendGoogleLensEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 53
    sget-object v0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    .line 47
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setupEntryView()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->unInit()V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/googlelens/GoogleLensTopBarItemUI;->mMonitorListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_google_lens_visible"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method
