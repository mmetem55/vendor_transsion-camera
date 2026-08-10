.class public Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field private static final INIT_CAPACITY:I = 0x8


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    array-length v1, v0

    iget v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    if-ne v1, v2, :cond_0

    add-int v1, v2, v2

    .line 12
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    aput p1, v0, v1

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    :cond_0
    return-void
.end method

.method public getInternalArray()[I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    return-object p0
.end method

.method public removeLast()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    aget p0, p0, v0

    return p0
.end method

.method public size()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    return p0
.end method

.method public toArray([I)[I
    .locals 2

    if-eqz p1, :cond_0

    .line 30
    array-length v0, p1

    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 31
    :cond_0
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    new-array p1, p1, [I

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mData:[I

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/utils/IntArray;->mSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
