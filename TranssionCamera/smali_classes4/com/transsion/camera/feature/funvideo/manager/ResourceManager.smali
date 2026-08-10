.class public Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field public static final BUILD_IN_ROOT:Ljava/lang/String; = "effect"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mPluginManager:Lcom/transsion/camera/feature/funvideo/manager/PluginManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FunRsManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/funvideo/manager/PluginManager;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/funvideo/manager/PluginManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->mPluginManager:Lcom/transsion/camera/feature/funvideo/manager/PluginManager;

    return-void
.end method

.method private generateEffectList(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/data/EffectItem;->getTypeByFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    array-length v1, p1

    if-lez v1, :cond_1

    .line 95
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-static {v0, v3}, Lcom/transsion/camera/feature/funvideo/data/EffectItemBuilder;->generateEffectItem(Ljava/lang/String;Ljava/io/File;)Lcom/transsion/camera/feature/funvideo/data/EffectItem;

    move-result-object v4

    .line 98
    sget-object v5, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateEffectItem : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", item: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private isBuildChanged(Landroid/content/Context;)Z
    .locals 5

    const-string p0, "build_version"

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p1, "BUILD_NUMBER"

    const/4 v1, 0x0

    .line 43
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 45
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    sget-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBuildChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", FINGERPRINT: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 48
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private loadEffectsFromFolder(Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    array-length v1, p1

    if-lez v1, :cond_2

    .line 81
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->generateEffectList(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private removeCache(Landroid/content/Context;)V
    .locals 3

    const-string p0, "effect"

    .line 36
    invoke-virtual {p1, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/transsion/camera/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result p1

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBuildInEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 62
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->isBuildChanged(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "effect"

    if-eqz v0, :cond_1

    .line 65
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->removeCache(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 67
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/transsion/camera/utils/FileUtil;->copyAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->loadEffectsFromFolder(Ljava/io/File;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPluginEffects(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/funvideo/data/EffectItem;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->mPluginManager:Lcom/transsion/camera/feature/funvideo/manager/PluginManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/manager/PluginManager;->getPluginEffects(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public unInit()V
    .locals 2

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ResourceManager unInit."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 31
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/manager/ResourceManager;->mPluginManager:Lcom/transsion/camera/feature/funvideo/manager/PluginManager;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/manager/PluginManager;->unInit()V

    return-void
.end method
