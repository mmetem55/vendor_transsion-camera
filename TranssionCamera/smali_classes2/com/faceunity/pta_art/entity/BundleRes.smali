.class public Lcom/faceunity/pta_art/entity/BundleRes;
.super Lcom/faceunity/pta_art/entity/FURes;
.source "BundleRes.java"


# instance fields
.field public gender:I

.field public isSupport:Z

.field public labels:[Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public others:[Ljava/lang/String;

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/faceunity/pta_art/entity/BundleRes;-><init>(ILjava/lang/String;I[Ljava/lang/Integer;Z[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[Ljava/lang/Integer;Z[Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/faceunity/pta_art/entity/FURes;-><init>()V

    .line 61
    iput p1, p0, Lcom/faceunity/pta_art/entity/BundleRes;->gender:I

    .line 62
    iput p3, p0, Lcom/faceunity/pta_art/entity/FURes;->resId:I

    .line 63
    iput-object p2, p0, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Lcom/faceunity/pta_art/entity/BundleRes;->getNameByPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/faceunity/pta_art/entity/BundleRes;->name:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/faceunity/pta_art/entity/BundleRes;->labels:[Ljava/lang/Integer;

    .line 66
    iput-boolean p5, p0, Lcom/faceunity/pta_art/entity/BundleRes;->isSupport:Z

    .line 67
    iput-object p6, p0, Lcom/faceunity/pta_art/entity/BundleRes;->others:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/Integer;Z)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/faceunity/pta_art/entity/BundleRes;-><init>(ILjava/lang/String;I[Ljava/lang/Integer;Z[Ljava/lang/String;)V

    return-void
.end method

.method private getNameByPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "/"

    .line 16
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 17
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    check-cast p1, Lcom/faceunity/pta_art/entity/BundleRes;

    .line 98
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/BundleRes;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/BundleRes;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gender:"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/faceunity/pta_art/entity/BundleRes;->gender:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resId:"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/faceunity/pta_art/entity/FURes;->resId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "path:"

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/faceunity/pta_art/entity/BundleRes;->path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isSupport:"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/faceunity/pta_art/entity/BundleRes;->isSupport:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "others:"

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/faceunity/pta_art/entity/BundleRes;->others:[Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
