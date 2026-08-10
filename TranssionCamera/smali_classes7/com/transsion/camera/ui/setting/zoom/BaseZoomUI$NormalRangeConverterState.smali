.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NormalRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V
    .locals 0

    .line 1234
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1235
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    return-void
.end method


# virtual methods
.method protected onEnter(I)V
    .locals 0

    .line 1250
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->onEnter(I)V

    .line 1251
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$NormalRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onMainCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .locals 0

    return p1
.end method

.method public valueToProgress(I)I
    .locals 0

    return p1
.end method
