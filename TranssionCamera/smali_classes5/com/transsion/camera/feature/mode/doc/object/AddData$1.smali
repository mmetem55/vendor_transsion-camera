.class synthetic Lcom/transsion/camera/feature/mode/doc/object/AddData$1;
.super Ljava/lang/Object;
.source "AddData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/object/AddData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$feature$mode$doc$object$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    invoke-static {}, Lcom/transsion/camera/feature/mode/doc/object/Type;->values()[Lcom/transsion/camera/feature/mode/doc/object/Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/feature/mode/doc/object/AddData$1;->$SwitchMap$com$transsion$camera$feature$mode$doc$object$Type:[I

    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/mode/doc/object/Type;->POINT:Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/mode/doc/object/AddData$1;->$SwitchMap$com$transsion$camera$feature$mode$doc$object$Type:[I

    sget-object v1, Lcom/transsion/camera/feature/mode/doc/object/Type;->LINE:Lcom/transsion/camera/feature/mode/doc/object/Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
