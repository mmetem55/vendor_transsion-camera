.class public interface abstract Lcom/transsion/camera/app/ui/IModePanelUI;
.super Ljava/lang/Object;
.source "IModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# virtual methods
.method public abstract cancelDragAndDrop()V
.end method

.method public abstract hide()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isVisible()Z
.end method

.method public abstract notifyListTypeUpdate()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract refreshModePanelView()V
.end method

.method public abstract resetMoreModeToNormal()V
.end method

.method public abstract restoreView()V
.end method

.method public abstract setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract setClickModeIconListener(Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;)V
.end method

.method public abstract setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
.end method

.method public abstract setModeList(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setModeNameBeforeSwitchMoreMode(Ljava/lang/String;)V
.end method

.method public abstract setModePanelGuideEnable(Z)V
.end method

.method public abstract setOnScrollListener(Lcom/transsion/camera/app/ui/mode/more/MoreView$IMorePanelScrollListener;)V
.end method

.method public abstract setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract setViewEnable(Z)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract show()V
.end method

.method public abstract shrinkModePanel()V
.end method

.method public abstract spreadModePanel()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateCurrentCamera(Ljava/lang/String;)V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateItemClickable(Z)V
.end method
