.class public Lcom/transsion/secondaryhome/TranResManager;
.super Ljava/lang/Object;
.source "TranResManager.java"


# annotations
.annotation runtime Lcom/transsion/secondaryhome/common/KolunKeep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/secondaryhome/TranResManager$Res_Type;
    }
.end annotation


# static fields
.field public static final BOOL:Ljava/lang/String; = "bool"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final DIMEN:Ljava/lang/String; = "dimen"

.field public static final DRAWABLE:Ljava/lang/String; = "drawable"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final INTEGER:Ljava/lang/String; = "integer"

.field public static final IS_ELECTRICITY_CLOCK:Ljava/lang/String; = "is_electricity_clock"

.field public static final LAYOUT:Ljava/lang/String; = "layout"

.field public static final MIPMAP:Ljava/lang/String; = "mipmap"

.field public static final RES_BOOL:I = 0x6

.field public static final RES_COLOR:I = 0x2

.field public static final RES_DIMEN:I = 0x3

.field public static final RES_DRAWABLE:I = 0x0

.field public static final RES_ID:I = 0x7

.field public static final RES_INTEGER:I = 0x1

.field public static final RES_LAYOUT:I = 0x5

.field public static final RES_MIPMAP:I = 0x8

.field public static final RES_STRING:I = 0x4

.field public static final STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "TranResManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCustomerView(Landroid/content/Context;Ljava/lang/Class;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 344
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 345
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    aput-object p0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static declared-synchronized findViewById(Landroid/view/View;Ljava/lang/Class;Ljava/lang/Integer;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/transsion/secondaryhome/TranResManager;->getId(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 158
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 264
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->isRemoteContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 265
    :goto_0
    invoke-static {p0, v0}, Lcom/transsion/secondaryhome/TranResManager;->from(Landroid/content/Context;I)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static from(Landroid/content/Context;I)Landroid/view/LayoutInflater;
    .locals 0

    .line 268
    invoke-static {p1}, Lcom/transsion/secondaryhome/res/ResWorkerManager;->getResWorker(I)Lcom/transsion/secondaryhome/res/ResWorkerInterface;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/transsion/secondaryhome/res/ResWorkerInterface;->getLayoutInflater(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 277
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getApplicationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getBoolean(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")Z"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x6

    .line 176
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p1

    if-gtz p1, :cond_0

    .line 178
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 180
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBoolean(Landroid/content/Context;Ljava/lang/Integer;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 165
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getBoolean(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getColor(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x2

    .line 139
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p1

    if-gtz p1, :cond_0

    .line 141
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getColor(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 127
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getColor(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDimension(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")F"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x3

    .line 196
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p1

    if-gtz p1, :cond_0

    .line 198
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float p0, p0

    monitor-exit v0

    return p0

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDimension(Landroid/content/Context;Ljava/lang/Integer;)F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 185
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getDimension(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 71
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v1, 0x8

    .line 73
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, v1, p2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result v1

    .line 75
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string p2, "TranResManager"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawable context:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", drawable :"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/secondaryhome/common/KolunRemoteLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/Context;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getDrawable(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getId(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x7

    .line 106
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p0

    if-gtz p0, :cond_0

    .line 108
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getId(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x7

    .line 91
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;II)I

    move-result v1

    if-gtz v1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 95
    :try_start_1
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getId(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInteger(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 241
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p1

    if-gtz p1, :cond_0

    .line 243
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInteger(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 230
    :try_start_0
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getInteger(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getLocalStubContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 443
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getLocalStubContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getNonWidgetResId(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 0

    const-class p0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter p0

    .line 255
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 434
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getRemoteResId(Landroid/content/Context;II)I
    .locals 2

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x0

    .line 121
    :try_start_0
    invoke-static {p0, v1, p1, p2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;II)I"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->isRemoteContext(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 82
    :goto_0
    invoke-static {p0, p1, v1, p2, p3}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;III)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getRemoteResId(Landroid/content/Context;Ljava/lang/Class;III)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;III)I"
        }
    .end annotation

    .line 86
    invoke-static {p2}, Lcom/transsion/secondaryhome/res/ResWorkerManager;->getResWorker(I)Lcom/transsion/secondaryhome/res/ResWorkerInterface;

    move-result-object p2

    invoke-interface {p2, p0, p4, p3, p1}, Lcom/transsion/secondaryhome/res/ResWorkerInterface;->getResId(Landroid/content/Context;IILjava/lang/Class;)I

    move-result p0

    return p0
.end method

.method public static getRemoteResourceContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 308
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->createRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getSecondaryScreen(Landroid/content/Context;)I
    .locals 0

    .line 312
    invoke-static {p0}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->getSecondaryScreen(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x4

    .line 221
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;Ljava/lang/Class;II)I

    move-result p1

    if-gtz p1, :cond_0

    .line 223
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getString(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/transsion/secondaryhome/TranResManager;

    monitor-enter v0

    const/4 v1, 0x4

    .line 206
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/transsion/secondaryhome/TranResManager;->getRemoteResId(Landroid/content/Context;II)I

    move-result v1

    if-gtz v1, :cond_0

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 210
    :try_start_1
    invoke-static {p0, v1, p1}, Lcom/transsion/secondaryhome/TranResManager;->getString(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getWidgetInfoFromDb(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    .line 390
    invoke-static {p0, p1, p2}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->getWidgetInfoFromDb(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWidgetInfoFromDb(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 0

    .line 381
    invoke-static {p0, p1}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->getWidgetInfoFromDb(Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isElectricityClock(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    const-string v0, "is_electricity_clock"

    .line 399
    invoke-static {v0, p0, p1}, Lcom/transsion/secondaryhome/TranResManager;->getWidgetInfoFromDb(Ljava/lang/String;Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    .line 401
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 402
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static saveWidgetInfoToDb(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 0

    .line 370
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->saveWidgetInfoToDb(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static saveWidgetInfoToDb(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z
    .locals 0

    .line 358
    invoke-static {p0, p1, p2}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->saveWidgetInfoToDb(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static setElectricityClock(Landroid/content/Context;Landroid/content/ComponentName;Z)Z
    .locals 1

    .line 419
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_electricity_clock"

    invoke-static {v0, p0, p2, p1}, Lcom/transsion/secondaryhome/TranResManager;->saveWidgetInfoToDb(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static setElectricityClock(Landroid/view/View;Z)Z
    .locals 1

    .line 430
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "is_electricity_clock"

    invoke-static {v0, p1, p0}, Lcom/transsion/secondaryhome/TranResManager;->saveWidgetInfoToDb(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static startActivityToWindows(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .locals 0

    .line 316
    invoke-static {p0, p1, p2}, Lcom/transsion/secondaryhome/RemoteLayoutInflater;->startActivityToWindows(Landroid/content/Context;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static startActivityWithTransition(Landroid/content/Context;Landroid/content/Intent;II)V
    .locals 1

    .line 320
    invoke-static {p0}, Lcom/transsion/secondaryhome/ContextHub;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 323
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    .line 325
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static startPendingIntent(Landroid/content/Context;ILandroid/app/PendingIntent;)Z
    .locals 0

    .line 299
    invoke-static {p0, p1, p2}, Lcom/transsion/secondaryhome/PendingIntentManager;->startPendingIntent(Landroid/content/Context;ILandroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method

.method public static startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 0

    .line 288
    invoke-static {p0, p1}, Lcom/transsion/secondaryhome/PendingIntentManager;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method
