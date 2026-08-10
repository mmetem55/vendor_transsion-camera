.class public abstract Lcom/faceunity/pta_art/constant/FUPTAClient;
.super Ljava/lang/Object;
.source "FUPTAClient.java"


# static fields
.field private static isCoreInit:Z

.field private static isStyleInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static createAvatarHairWithHeadData([B[B)[B
    .locals 1

    .line 101
    sget-boolean v0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isCoreInit:Z

    if-eqz v0, :cond_1

    .line 103
    sget-boolean v0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isStyleInit:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->setBundle([B)I

    move-result p0

    .line 106
    invoke-static {p0, p1}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->deformMesh(I[B)[B

    move-result-object p1

    .line 107
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->releaseHandle(I)V

    return-object p1

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FUP2AClientStyle has not been initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FUP2AClientCore has not been initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deformAvatarHeadWithHeadData([B[F)[B
    .locals 1

    .line 173
    sget-boolean v0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isCoreInit:Z

    if-eqz v0, :cond_1

    .line 175
    sget-boolean v0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isStyleInit:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->setBundle([B)I

    move-result p0

    .line 178
    invoke-static {p0, p1}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->facepup(I[F)Z

    const/4 p1, 0x0

    .line 179
    invoke-static {p0, p1, p1}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->getHeadBundle(IZZ)[B

    move-result-object p1

    .line 180
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->releaseHandle(I)V

    return-object p1

    .line 176
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FUP2AClientStyle has not been initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "FUP2AClientCore has not been initialized yet."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static releaseData()V
    .locals 0

    .line 273
    invoke-static {}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->releaseData()V

    return-void
.end method

.method public static setupAuth([B)Z
    .locals 0

    .line 76
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->setAuth([B)Z

    move-result p0

    return p0
.end method

.method public static setupData([B)Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isCoreInit:Z

    if-nez v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->setData([B)Z

    move-result p0

    sput-boolean p0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isCoreInit:Z

    return p0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "FUP2AClientCore has been initialized."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupStyleData([B)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/faceunity/pta_client_lite/fuPTAClientLite;->setData([B)Z

    move-result p0

    sput-boolean p0, Lcom/faceunity/pta_art/constant/FUPTAClient;->isStyleInit:Z

    return p0
.end method
