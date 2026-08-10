.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$2;
.super Ljava/lang/Object;
.source "MovieTheme.java"

# interfaces
.implements Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$2;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeStamp(J)J
    .locals 2

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$2;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    .line 344
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeStamp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " has no time stamp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 p0, -0x1

    return-wide p0

    .line 347
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
