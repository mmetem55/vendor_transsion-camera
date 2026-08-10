.class public final synthetic Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/faceunity/pta_art/entity/AvatarPTA;


# direct methods
.method public synthetic constructor <init>(Lcom/faceunity/pta_art/entity/AvatarPTA;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda2;->f$0:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda2;->f$0:Lcom/faceunity/pta_art/entity/AvatarPTA;

    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->$r8$lambda$Dz8LRoTEElYpi2b-HaN9mrYc4R8(Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/entity/AvatarPTA;)Z

    move-result p0

    return p0
.end method
