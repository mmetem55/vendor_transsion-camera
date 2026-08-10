.class public Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;
.super Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;
.source "AODModePickerUIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraModeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultMode:Ljava/lang/String;

.field private final mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

.field private final mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;


# direct methods
.method public static synthetic $r8$lambda$F01Bon56j9KB-A1sjhKyh5MTlJE(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v7, p4

    .line 50
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;-><init>(Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;Lcom/transsion/camera/utils/sound/IActionSound;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 52
    iput-object p3, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    .line 53
    new-instance p4, Lcom/transsion/camera/app/ui/AODModeScrollUI;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/app/ui/AODModeScrollUI;-><init>(Landroid/content/Context;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/ui/ScrollConsumer;)V

    .line 54
    new-instance p2, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;)V

    invoke-virtual {p4, p2}, Lcom/transsion/camera/app/ui/AODModeScrollUI;->setModePickerListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V

    .line 59
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    .line 60
    new-instance p2, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/ui/AODModeIndicatorUI;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;)Lcom/transsion/camera/app/ui/IModeIndicatorUI;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeChangedListener:Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    if-eqz p0, :cond_0

    .line 56
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static modeIndex(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)I"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_2

    .line 148
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/FeatureResource;

    iget-object v3, v3, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 149
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public notifyCameraOperateActionToUI(I)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->notifyCameraOperateActionToUI(I)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x35

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->show()V

    goto :goto_0

    .line 133
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->hide()V

    goto :goto_0

    .line 129
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->hide(Z)V

    :goto_0
    return-void
.end method

.method protected onInflateLayout(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mParentLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onOrientationChanged(IZ)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->onOrientationChanged(IZ)V

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_1

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;->onOrientationChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public resume()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->resume()V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->show()V

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 71
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->setEnable(Z)V

    .line 72
    sget-object v0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnable enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mScrollConsumer:Lcom/transsion/camera/app/ui/ScrollConsumer;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setScrollEnable(Z)V

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;",
            "Z)V"
        }
    .end annotation

    const-string p3, "0"

    .line 94
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDefaultMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mDefaultMode:Ljava/lang/String;

    .line 95
    invoke-interface {p2, p3}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mCameraModeList:Ljava/util/List;

    return-void
.end method

.method public setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$ModeScrollListenerWrapper;-><init>(Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager$1;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setScrollListener(Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;)V

    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;Z)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentCamera(Ljava/lang/String;Z)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mCameraModeList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->setModeList(Ljava/util/List;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mDefaultMode:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mCameraModeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->setModeSize(I)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mDefaultMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mCameraModeList:Ljava/util/List;

    invoke-static {p2, p0}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->modeIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->updateSelectedIndex(I)V

    return-void
.end method

.method public updateCurrentModes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation

    .line 110
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->updateCurrentModes(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AbstractModePickerUIManager;->mModeScrollUI:Lcom/transsion/camera/app/ui/IModeScrollUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mDefaultMode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModeScrollUI;->updateSelectedMode(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->setModeSize(I)V

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mModeIndicatorUI:Lcom/transsion/camera/app/ui/IModeIndicatorUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->mDefaultMode:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/manager/AODModePickerUIManager;->modeIndex(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/ui/IModeIndicatorUI;->updateSelectedIndex(I)V

    return-void
.end method
