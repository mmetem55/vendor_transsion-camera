.class Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mPosition:I

.field mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    return-void
.end method


# virtual methods
.method fill(ILandroid/view/View;)Z
    .locals 1

    .line 30
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    .line 34
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    return v0
.end method

.method isAvailable()Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 41
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItemInfo {mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/ui/template/listutil/ItemInfo;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
