.class Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;
.super Ljava/lang/Object;
.source "ZoomParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamIdCallback([I)V
    .locals 3

    if-eqz p1, :cond_1

    .line 176
    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 177
    aget p1, p1, v0

    .line 178
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$000(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$002(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;I)I

    .line 180
    invoke-static {}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStreamIdCallback] mStreamId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$000(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$200(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$200(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 184
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$202(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;Z)Z

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig$1;->this$0:Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;->access$300(Lcom/transsion/camera/feature/setting/zoom/ZoomParameterConfig;)Lcom/transsion/camera/feature/setting/zoom/Zoom;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;->showTeleTips()V

    :cond_1
    return-void
.end method
