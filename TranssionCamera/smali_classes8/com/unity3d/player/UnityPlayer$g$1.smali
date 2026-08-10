.class final Lcom/unity3d/player/UnityPlayer$g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$g;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$g;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v1, v0, Lcom/unity3d/player/UnityPlayer$g;->d:I

    sget v2, Lcom/unity3d/player/UnityPlayer$b;->c:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, v0, Lcom/unity3d/player/UnityPlayer$g;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->access$000(Lcom/unity3d/player/UnityPlayer;Z)V

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    sget v0, Lcom/unity3d/player/UnityPlayer$b;->a:I

    iput v0, p0, Lcom/unity3d/player/UnityPlayer$g;->d:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8dd

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/UnityPlayer$f;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$f;->h:Lcom/unity3d/player/UnityPlayer$f;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->e:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$g;->e:I

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->b:Z

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->c:Z

    if-nez v2, :cond_2

    return v3

    :cond_2
    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->i:I

    if-ltz v2, :cond_4

    if-nez v2, :cond_3

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$100(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$200(Lcom/unity3d/player/UnityPlayer;)V

    :cond_3
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->i:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$g;->i:I

    :cond_4
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->i:I

    if-nez v2, :cond_5

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$300(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$400(Lcom/unity3d/player/UnityPlayer;)V

    :cond_5
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->h:Z

    if-eqz v2, :cond_7

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->j:I

    if-ltz v2, :cond_7

    if-nez v2, :cond_6

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$500(Lcom/unity3d/player/UnityPlayer;)V

    :cond_6
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->j:I

    sub-int/2addr v2, v3

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$g;->j:I

    :cond_7
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$600(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->access$700(Lcom/unity3d/player/UnityPlayer;)V

    goto/16 :goto_1

    :cond_8
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->c:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_9

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->b:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_a

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$g;->b:Z

    goto/16 :goto_1

    :cond_a
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->a:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->b:Z

    goto :goto_1

    :cond_b
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->d:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_c

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->c:Z

    goto :goto_1

    :cond_c
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->e:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_d

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$g;->c:Z

    :goto_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$g$1;->a()V

    goto :goto_1

    :cond_d
    sget-object v4, Lcom/unity3d/player/UnityPlayer$f;->f:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v4, :cond_f

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget v4, p1, Lcom/unity3d/player/UnityPlayer$g;->d:I

    sget v5, Lcom/unity3d/player/UnityPlayer$b;->a:I

    if-ne v4, v5, :cond_e

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v2}, Lcom/unity3d/player/UnityPlayer;->access$000(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_e
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    sget v2, Lcom/unity3d/player/UnityPlayer$b;->b:I

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$g;->d:I

    goto :goto_1

    :cond_f
    sget-object v2, Lcom/unity3d/player/UnityPlayer$f;->g:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v2, :cond_10

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    sget v2, Lcom/unity3d/player/UnityPlayer$b;->c:I

    iput v2, p1, Lcom/unity3d/player/UnityPlayer$g;->d:I

    goto :goto_0

    :cond_10
    sget-object v2, Lcom/unity3d/player/UnityPlayer$f;->i:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v2, :cond_11

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getLaunchURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/unity3d/player/UnityPlayer;->access$800(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    sget-object v2, Lcom/unity3d/player/UnityPlayer$f;->j:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v2, :cond_12

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-object v2, p1, Lcom/unity3d/player/UnityPlayer$g;->k:Lcom/unity3d/player/UnityPlayer;

    iget v4, p1, Lcom/unity3d/player/UnityPlayer$g;->f:I

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$g;->g:I

    invoke-static {v2, v4, p1}, Lcom/unity3d/player/UnityPlayer;->access$900(Lcom/unity3d/player/UnityPlayer;II)V

    goto :goto_1

    :cond_12
    sget-object v2, Lcom/unity3d/player/UnityPlayer$f;->k:Lcom/unity3d/player/UnityPlayer$f;

    if-ne p1, v2, :cond_13

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$g;->h:Z

    :cond_13
    :goto_1
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$g;->b:Z

    if-eqz v2, :cond_14

    iget v2, p1, Lcom/unity3d/player/UnityPlayer$g;->e:I

    if-gtz v2, :cond_14

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$g;->a:Landroid/os/Handler;

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer$g$1;->a:Lcom/unity3d/player/UnityPlayer$g;

    iget p1, p0, Lcom/unity3d/player/UnityPlayer$g;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/unity3d/player/UnityPlayer$g;->e:I

    :cond_14
    return v3
.end method
