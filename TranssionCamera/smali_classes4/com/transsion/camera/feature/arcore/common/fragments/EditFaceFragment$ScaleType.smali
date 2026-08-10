.class final enum Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
.super Ljava/lang/Enum;
.source "EditFaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

.field public static final enum MIDDLE:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

.field public static final enum MIN:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

.field public static final enum TOP:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 126
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->TOP:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    new-instance v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->MIDDLE:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    new-instance v3, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    const-string v5, "MIN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->MIN:Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 125
    sput-object v5, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
    .locals 1

    .line 125
    const-class v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;
    .locals 1

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$ScaleType;

    return-object v0
.end method
