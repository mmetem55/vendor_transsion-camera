.class public Lcom/bef/effectsdk/ModelnamesAssigner;
.super Ljava/lang/Object;
.source "ModelnamesAssigner.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSetAssignedModelNames(J[Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeSetAssignedModelNamesWithPriority(J[Ljava/lang/String;[Ljava/lang/String;[I)I
.end method

.method public static setAssignedModelNames(J[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/bef/effectsdk/ModelnamesAssigner;->nativeSetAssignedModelNames(J[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setAssignedModelNamesWithPriority(J[Ljava/lang/String;[Ljava/lang/String;[I)I
    .locals 0

    .line 19
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bef/effectsdk/ModelnamesAssigner;->nativeSetAssignedModelNamesWithPriority(J[Ljava/lang/String;[Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method
