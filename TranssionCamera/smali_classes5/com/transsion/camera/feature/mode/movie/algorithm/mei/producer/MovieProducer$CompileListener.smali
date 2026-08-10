.class Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;
.super Ljava/lang/Object;
.source "MovieProducer.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CompileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$1;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;-><init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V

    return-void
.end method


# virtual methods
.method public onCompileFailed(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onCompileFailed"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$400(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V

    return-void
.end method

.method public onCompileFinished(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onCompileFinished"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$100(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$300(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$400(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;)V

    :goto_0
    return-void
.end method

.method public onCompileProgress(Lcom/meicam/sdk/NvsTimeline;I)V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer$CompileListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$102(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;I)I

    .line 57
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MovieProducer;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCompileProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
