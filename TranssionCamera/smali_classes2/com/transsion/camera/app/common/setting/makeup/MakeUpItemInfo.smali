.class public final Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;
.super Ljava/lang/Object;
.source "MakeUpItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field public final intensityArray:[F

.field public final isContrast:Z

.field public final keyArray:[Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final styleNumber:I

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[F)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    .line 25
    iput p2, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    .line 26
    iput-object p3, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->keyArray:[Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    return-void
.end method

.method public static toJson(Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;
    .locals 5

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 41
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 43
    :try_start_0
    const-class v2, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    sget-object v2, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromJson: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", exception: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MakeUpItemInfo:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n styleNumber = "

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n path = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n tag = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n intensityArray = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [[F

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
