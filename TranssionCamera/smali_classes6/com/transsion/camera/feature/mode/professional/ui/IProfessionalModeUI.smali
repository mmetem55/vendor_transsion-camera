.class public interface abstract Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI;
.super Ljava/lang/Object;
.source "IProfessionalModeUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/professional/ui/IProfessionalModeUI$UIState;
    }
.end annotation


# static fields
.field public static final STATE_DISABLE:I = 0x3

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PROCESSING:I = 0x1

.field public static final STATE_SAVING:I = 0x2


# virtual methods
.method public abstract dismissPopup()Z
.end method

.method public abstract hideSeekBarIfNeed(Z)V
.end method

.method public abstract inflateViewIfNeed(I)V
.end method

.method public abstract init()V
.end method

.method public abstract isCaptureButtonEnable()Z
.end method

.method public abstract isSeekBarShowing()Z
.end method

.method public abstract synthetic onOrientationChanged(I)V
.end method

.method public abstract synthetic onScreenFormChanged(IZ)V
.end method

.method public abstract resetCapturingUI()V
.end method

.method public abstract seCaptureStopListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setCaptureButtonEnable(Z)V
.end method

.method public abstract setCapturingProgressCallBack(Lcom/transsion/camera/feature/mode/professional/ui/CapturingProgressView$ProgressCallBack;)V
.end method

.method public abstract setSettingUIList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startCapturingBeginAnim(J)V
.end method

.method public abstract startCapturingEndAnim()V
.end method

.method public abstract stopCapturingBeginAnim()V
.end method

.method public abstract stopCapturingEndAnim()V
.end method

.method public abstract unInit()V
.end method

.method public abstract updateUIState(IZ)V
.end method
