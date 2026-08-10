.class final Lcom/transnet/filter/FFmpegCmd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transnet/filter/listener/OnHandleListener;

.field final synthetic b:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transnet/filter/listener/OnHandleListener;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transnet/filter/FFmpegCmd$1;->a:Lcom/transnet/filter/listener/OnHandleListener;

    iput-object p2, p0, Lcom/transnet/filter/FFmpegCmd$1;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transnet/filter/FFmpegCmd$1;->a:Lcom/transnet/filter/listener/OnHandleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transnet/filter/listener/OnHandleListener;->onBegin()V

    :cond_0
    iget-object v0, p0, Lcom/transnet/filter/FFmpegCmd$1;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/transnet/filter/FFmpegCmd$1;->a:Lcom/transnet/filter/listener/OnHandleListener;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/transnet/filter/listener/OnHandleListener;->onEnd(ILjava/lang/String;)V

    :cond_1
    return-void
.end method
