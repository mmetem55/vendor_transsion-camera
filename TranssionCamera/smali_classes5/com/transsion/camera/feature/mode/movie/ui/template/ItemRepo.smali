.class final Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo;
.super Ljava/lang/Object;
.source "ItemRepo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;)V
    .locals 1

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$1;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;Lcom/transsion/camera/feature/mode/movie/ui/template/ItemRepo$ILoadCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 41
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
