.class Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;
.super Landroid/os/AsyncTask;
.source "ItemRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo;->loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$playerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$callback:Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$playerManager:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;

    invoke-static {p1, p0}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;->loadMovieItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;->val$callback:Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;->onLoad(Ljava/util/List;)V

    return-void
.end method
