.class final Lcom/transnet/filter/FFmpegCmd$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transnet/filter/FFmpegCmd;->a([[Ljava/lang/String;[Ljava/lang/String;Lcom/transnet/filter/listener/OnHandleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transnet/filter/listener/OnHandleListener;

.field final synthetic b:[[Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transnet/filter/listener/OnHandleListener;[[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transnet/filter/FFmpegCmd$2;->a:Lcom/transnet/filter/listener/OnHandleListener;

    iput-object p2, p0, Lcom/transnet/filter/FFmpegCmd$2;->b:[[Ljava/lang/String;

    iput-object p3, p0, Lcom/transnet/filter/FFmpegCmd$2;->c:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/transnet/filter/FFmpegCmd$2;->a:Lcom/transnet/filter/listener/OnHandleListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transnet/filter/listener/OnHandleListener;->onBegin()V

    :cond_0
    iget-object v0, p0, Lcom/transnet/filter/FFmpegCmd$2;->b:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    invoke-static {v6}, Lcom/transnet/filter/FFmpegCmd;->a(Lcom/transnet/filter/listener/OnHandleListener;)Lcom/transnet/filter/listener/OnHandleListener;

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    iget-object v7, p0, Lcom/transnet/filter/FFmpegCmd$2;->a:Lcom/transnet/filter/listener/OnHandleListener;

    invoke-static {v7}, Lcom/transnet/filter/FFmpegCmd;->a(Lcom/transnet/filter/listener/OnHandleListener;)Lcom/transnet/filter/listener/OnHandleListener;

    :cond_1
    invoke-static {v5}, Lcom/transnet/filter/FFmpegCmd;->a([Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transnet/filter/FFmpegCmd$2;->a:Lcom/transnet/filter/listener/OnHandleListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v5, v6}, Lcom/transnet/filter/listener/OnHandleListener;->onEnd(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transnet/filter/FFmpegCmd$2;->c:[Ljava/lang/String;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_4

    aget-object v1, p0, v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
