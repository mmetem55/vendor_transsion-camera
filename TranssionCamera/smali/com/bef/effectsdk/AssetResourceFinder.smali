.class public final Lcom/bef/effectsdk/AssetResourceFinder;
.super Ljava/lang/Object;
.source "AssetResourceFinder.java"

# interfaces
.implements Lcom/bef/effectsdk/ResourceFinder;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mDir:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    .line 16
    iput-object p2, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mDir:Ljava/lang/String;

    return-void
.end method

.method private static native nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J
.end method

.method private static native nativeReleaseAssetResourceFinder(J)V
.end method


# virtual methods
.method public declared-synchronized createNativeResourceFinder(J)J
    .locals 2

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/bef/effectsdk/AssetResourceFinder;->mDir:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/bef/effectsdk/AssetResourceFinder;->nativeCreateAssetResourceFinder(JLandroid/content/res/AssetManager;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(J)V
    .locals 0

    monitor-enter p0

    .line 38
    :try_start_0
    invoke-static {p1, p2}, Lcom/bef/effectsdk/AssetResourceFinder;->nativeReleaseAssetResourceFinder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
