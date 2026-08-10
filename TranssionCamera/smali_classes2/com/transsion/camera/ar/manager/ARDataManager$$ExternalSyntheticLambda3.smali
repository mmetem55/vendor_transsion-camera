.class public final synthetic Lcom/transsion/camera/ar/manager/ARDataManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->clone()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object p0

    return-object p0
.end method
