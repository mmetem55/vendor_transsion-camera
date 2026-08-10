.class Lcom/transsion/widgetslib/view/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/LoadingView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/view/LoadingView;

.field final synthetic val$darkMode:Z


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/view/LoadingView;Z)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    iput-boolean p2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 69
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 71
    iget-object v2, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "loading_medium.json"

    if-eqz v2, :cond_8

    .line 73
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_small_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-gt v0, v4, :cond_2

    .line 75
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loading_small_colorfull.json"

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_1

    const-string v0, "loading_small_night.json"

    goto :goto_0

    :cond_1
    const-string v0, "loading_small.json"

    goto :goto_0

    .line 77
    :goto_1
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    goto :goto_6

    .line 78
    :cond_2
    sget v4, Lcom/transsion/widgetslib/R$dimen;->os_loading_medium_size:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-gt v0, v2, :cond_5

    .line 80
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "loading_medium_colorfull.json"

    :goto_2
    move-object v3, v0

    goto :goto_3

    .line 81
    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_4

    const-string v0, "loading_medium_night.json"

    goto :goto_2

    .line 82
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    goto :goto_6

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v0}, Lcom/transsion/widgetslib/view/LoadingView;->access$100(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "loading_large_colorfull.json"

    :goto_4
    move-object v3, v0

    goto :goto_5

    .line 86
    :cond_6
    iget-boolean v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->val$darkMode:Z

    if-eqz v0, :cond_7

    const-string v0, "loading_large_night.json"

    goto :goto_4

    :cond_7
    const-string v0, "loading_large.json"

    goto :goto_4

    .line 87
    :goto_5
    iget-object v0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$002(Lcom/transsion/widgetslib/view/LoadingView;I)I

    :cond_8
    :goto_6
    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$200(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {v1}, Lcom/transsion/widgetslib/view/LoadingView;->access$300(Lcom/transsion/widgetslib/view/LoadingView;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 97
    iget-object p0, p0, Lcom/transsion/widgetslib/view/LoadingView$1;->this$0:Lcom/transsion/widgetslib/view/LoadingView;

    invoke-static {p0}, Lcom/transsion/widgetslib/view/LoadingView;->access$200(Lcom/transsion/widgetslib/view/LoadingView;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-eqz v0, :cond_a

    .line 104
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catchall_0
    move-exception p0

    goto :goto_8

    :catch_0
    move-exception p0

    :try_start_2
    const-string v1, "LoadingView"

    const-string v2, "open asset file error"

    .line 100
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    .line 104
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_7
    return-void

    :goto_8
    if-eqz v0, :cond_b

    .line 104
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 106
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 109
    :cond_b
    :goto_9
    throw p0
.end method
