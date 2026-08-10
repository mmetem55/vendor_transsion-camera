.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WideRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1196
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    return-void
.end method


# virtual methods
.method protected onEnter(I)V
    .locals 0

    .line 1225
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->onEnter(I)V

    .line 1226
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onWideCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .locals 2

    .line 1201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1202
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 p0, 0x64

    return p0

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1206
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    .line 1205
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public valueToProgress(I)I
    .locals 6

    .line 1212
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1213
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    move v5, v3

    move v3, v1

    move v1, v5

    if-ge v1, v2, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v4}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1600(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v0, :cond_0

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 1220
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$WideRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1500(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
