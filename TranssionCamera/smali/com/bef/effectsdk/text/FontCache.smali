.class public Lcom/bef/effectsdk/text/FontCache;
.super Ljava/lang/Object;
.source "FontCache.java"


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x20

.field private static fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static lruQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3

    const-class v0, Lcom/bef/effectsdk/text/FontCache;

    monitor-enter v0

    .line 16
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILE_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 20
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_0

    .line 26
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 27
    sget-object p1, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 30
    :cond_0
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 23
    monitor-exit v0

    return-object p0

    .line 33
    :cond_1
    :try_start_3
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 34
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getFromSystem(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 3

    const-class v0, Lcom/bef/effectsdk/text/FontCache;

    monitor-enter v0

    .line 40
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SYSTEM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 44
    :try_start_1
    invoke-static {p0, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    const/16 p1, 0x20

    if-lt p0, p1, :cond_0

    .line 50
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 54
    :cond_0
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {p0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 47
    monitor-exit v0

    return-object p0

    .line 57
    :cond_1
    :try_start_3
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 58
    sget-object p0, Lcom/bef/effectsdk/text/FontCache;->lruQueue:Ljava/util/LinkedList;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
