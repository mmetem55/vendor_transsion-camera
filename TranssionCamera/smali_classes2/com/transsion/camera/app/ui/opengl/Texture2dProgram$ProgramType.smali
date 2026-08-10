.class public final enum Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
.super Ljava/lang/Enum;
.source "Texture2dProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/Texture2dProgram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgramType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

.field public static final enum TEXTURE_EXT_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 28
    new-instance v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v3, "TEXTURE_EXT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 29
    new-instance v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v5, "TEXTURE_EXT_FOR_P3_VIDEO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_EXT_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    .line 30
    new-instance v5, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const-string v7, "TEXTURE_2D_FOR_P3_VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->TEXTURE_2D_FOR_P3_VIDEO:Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 26
    sput-object v7, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .locals 1

    .line 26
    const-class v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->$VALUES:[Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/ui/opengl/Texture2dProgram$ProgramType;

    return-object v0
.end method
