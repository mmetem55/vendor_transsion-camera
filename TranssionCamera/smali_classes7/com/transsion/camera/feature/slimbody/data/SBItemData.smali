.class public Lcom/transsion/camera/feature/slimbody/data/SBItemData;
.super Ljava/lang/Object;
.source "SBItemData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public armSlim:I

.field public bellySlim:I

.field public bodySlim:I

.field public buttPlump:I

.field public chestPlump:I

.field public contrastState:Ljava/lang/String;

.field public featureId:I

.field public headShrink:I

.field public legLengthen:I

.field public legSlim:I

.field public presetMode:I

.field public shoulderSlim:I

.field public switchState:Ljava/lang/String;

.field public waistSlim:I

.field public waistUpper:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->switchState:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->contrastState:Ljava/lang/String;

    return-void
.end method

.method public static toJson(Lcom/transsion/camera/feature/slimbody/data/SBItemData;)Ljava/lang/String;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 26
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/String;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;
    .locals 2

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    const-class v1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SBItemData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ",presetMode = "

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->presetMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",featureId = "

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bodySlim = "

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bodySlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",headShrink = "

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->headShrink:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",chestPlump = "

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->chestPlump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",waistSlim = "

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",buttPlump = "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->buttPlump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",legLengthen = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legLengthen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",shoulderSlim = "

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->shoulderSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",legSlim = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->legSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bellySlim = "

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->bellySlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",armSlim = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->armSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",waistUpper = "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->waistUpper:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
