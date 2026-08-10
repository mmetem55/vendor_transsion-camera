.class public Lcom/transsion/camera/ar/utils/AssetManagerHelper;
.super Ljava/lang/Object;
.source "AssetManagerHelper.java"


# instance fields
.field private final allAssets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final root:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->allAssets:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->root:Ljava/lang/String;

    return-void
.end method

.method private listAllAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 34
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->listAllAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 36
    array-length v4, v4

    if-nez v4, :cond_2

    .line 37
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->allAssets:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public listAllAssets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->allAssets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->root:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->listAllAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/ar/utils/AssetManagerHelper;->allAssets:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
