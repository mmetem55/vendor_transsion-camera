.class public Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo;
.super Ljava/lang/Object;
.source "BefDynamicActionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;,
        Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;
    }
.end annotation


# instance fields
.field private personCount:I

.field private persons:[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;

.field private skInfos:[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPersonCount()I
    .locals 0

    .line 14
    iget p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo;->personCount:I

    return p0
.end method

.method public getPersons()[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo;->persons:[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicActionInfo;

    return-object p0
.end method

.method public getSkInfos()[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo;->skInfos:[Lcom/bytedance/labcv/effectsdk/BefDynamicActionInfo$DynamicSkInfo;

    return-object p0
.end method
