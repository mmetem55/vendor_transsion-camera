.class final Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;
.super Ljava/lang/Object;
.source "ItemFactory.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadMovieItems(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/movie/ui/template/item/BaseMovieItem;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    .line 33
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "loadMovieItem context is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->loadLocalTheme(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/ui/template/ItemFactory;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "loadLocalTheme failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    .line 45
    new-instance v3, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;

    invoke-direct {v3, p0, v2, p1}, Lcom/transsion/camera/feature/mode/movie/ui/template/item/AssertMovieItem;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
