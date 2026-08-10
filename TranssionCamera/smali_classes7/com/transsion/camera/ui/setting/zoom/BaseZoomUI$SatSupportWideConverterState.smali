.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SatSupportWideConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1166
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .locals 1

    .line 1177
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMax:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onEnter(I)V
    .locals 0

    .line 1171
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->onEnter(I)V

    .line 1172
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$SatSupportWideConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onSatCameraSelected()V

    return-void
.end method

.method progressToValue(I)I
    .locals 0

    return p1
.end method

.method valueToProgress(I)I
    .locals 0

    return p1
.end method
