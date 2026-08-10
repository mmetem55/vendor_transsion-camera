.class Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;
.super Ljava/lang/Object;
.source "MovieUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyCameraOperateAction(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "mRecorderUI is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI$1;->this$0:Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;->access$000(Lcom/transsion/camera/feature/mode/movie/ui/MovieUI;)Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/RecorderUI;->notifyCameraOperateAction(I)V

    return-void
.end method
