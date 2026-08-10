.class public Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static ABSLISTVIEW_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final BOUNCEEFFECT_SUPPORT:Z

.field public static HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static SCROLLVIEW_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.traneffect.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    :try_start_0
    const-string v0, "android.widget.AbsListView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.HorizontalScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->HORIZONTAL_SCROLLVIEW_CLASS:Ljava/lang/Class;

    const-string v0, "android.widget.ScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "OverScrollDecorHelper"

    const-string v1, "class not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z
    .locals 3

    const-string v0, "enableTranBounceEffect"

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBounceEdgeEffect not found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverScrollDecorHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static setUpMiscViewOverScroll(Landroid/view/View;ILcom/transsion/effectengine/bounceeffect/adapters/MiscViewOverScrollDecorAdapter;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    sget-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clazz:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverScrollDecorHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    invoke-direct {p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 1
    iput-object p2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object p1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    invoke-direct {p1, p2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance p2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 3
    iput-object p2, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object p1
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    sget-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOdo;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->ABSLISTVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 3
    iput-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 3

    sget-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setBounceEdgeEffect(Ljava/lang/Class;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOnew;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;

    sget-object v2, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->SCROLLVIEW_CLASS:Ljava/lang/Class;

    invoke-direct {v1, v2, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOint;-><init>(Ljava/lang/Class;Landroid/view/View;)V

    .line 4
    iput-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    return-object v0
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 2

    sget-boolean v0, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->BOUNCEEFFECT_SUPPORT:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;

    invoke-direct {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOif;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 5
    iput-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 6
    invoke-interface {v0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;

    invoke-direct {v1, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOint;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {p1, v1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOtry;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoObyte/z1OoOfor;)V

    .line 7
    iput-object v0, p1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;->z1OoOsuper:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;

    .line 8
    invoke-interface {v0, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOfor;->z1OoOdo(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOnew;)V

    return-object p1
.end method

.method public static setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;IZ)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroidx/recyclerview/widget/RecyclerView;I)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;->enableNestedScrollMode(Z)V

    :cond_0
    return-object p0
.end method
