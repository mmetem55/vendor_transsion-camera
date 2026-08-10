.class public Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;
.super Ljava/lang/Object;
.source "SlimBodyItemInfo.java"

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

    .line 9
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->switchState:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->contrastState:Ljava/lang/String;

    return-void
.end method

.method public static toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;
    .locals 1

    .line 40
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 41
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;
    .locals 2

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 47
    const-class v1, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SBItemData:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ",presetMode = "

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->presetMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",featureId = "

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bodySlim = "

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bodySlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",headShrink = "

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->headShrink:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",chestPlump = "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->chestPlump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",waistSlim = "

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",buttPlump = "

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->buttPlump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",legLengthen = "

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legLengthen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",shoulderSlim = "

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->shoulderSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",legSlim = "

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->legSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bellySlim = "

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->bellySlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",armSlim = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->armSlim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",waistUpper = "

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->waistUpper:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
