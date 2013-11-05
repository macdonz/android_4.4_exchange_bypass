.class public Lcom/android/mail/ui/ToastBarOperation;
.super Ljava/lang/Object;
.source "ToastBarOperation.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Lcom/android/mail/ui/ToastBarOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAction:I

.field private final mBatch:Z

.field private final mCount:I

.field private final mFolder:Lcom/android/mail/providers/Folder;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/android/mail/ui/ToastBarOperation$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/ui/ToastBarOperation$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/ToastBarOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(IIIZLcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter "count"
    .parameter "menuId"
    .parameter "type"
    .parameter "batch"
    .parameter "operationFolder"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    #p0=(Reference);
    iput p1, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    .line 52
    iput p2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    .line 53
    iput-boolean p4, p0, Lcom/android/mail/ui/ToastBarOperation;->mBatch:Z

    .line 54
    iput p3, p0, Lcom/android/mail/ui/ToastBarOperation;->mType:I

    .line 55
    iput-object p5, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "in"
    .parameter "loader"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    #p0=(Reference);
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mBatch:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mType:I

    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    iput-object v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    .line 72
    return-void

    .line 69
    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v5, 0x0

    .line 125
    #v5=(Null);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    #v2=(Integer);
    const v3, 0x7f08016c

    #v3=(Integer);
    if-ne v2, v3, :cond_0

    .line 126
    const v1, 0x7f10000c

    .line 150
    .local v1, resId:I
    :goto_0
    #v1=(Integer);
    const/4 v2, -0x1

    #v2=(Byte);
    if-ne v1, v2, :cond_b

    const-string v0, ""

    .line 152
    .end local v1           #resId:I
    :goto_1
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v0

    .line 127
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Integer);v3=(Integer);v4=(One);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f08016b

    if-ne v2, v3, :cond_1

    .line 128
    const v2, 0x7f0a00a3

    new-array v3, v4, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_1

    .line 129
    :cond_1
    #v0=(Uninit);v3=(Integer);v4=(One);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080170

    if-ne v2, v3, :cond_2

    .line 130
    const v1, 0x7f10000d

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 131
    .end local v1           #resId:I
    :cond_2
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080017

    if-ne v2, v3, :cond_3

    .line 132
    const v2, 0x7f0a00a4

    new-array v3, v4, [Ljava/lang/Object;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_1

    .line 133
    :cond_3
    #v0=(Uninit);v3=(Integer);v4=(One);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f08016a

    if-ne v2, v3, :cond_4

    .line 134
    const v1, 0x7f10000b

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 135
    .end local v1           #resId:I
    :cond_4
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080176

    if-ne v2, v3, :cond_5

    .line 136
    const v1, 0x7f100007

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 137
    .end local v1           #resId:I
    :cond_5
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080177

    if-ne v2, v3, :cond_6

    .line 138
    const v1, 0x7f100008

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 139
    .end local v1           #resId:I
    :cond_6
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080173

    if-ne v2, v3, :cond_7

    .line 140
    const v1, 0x7f100009

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 141
    .end local v1           #resId:I
    :cond_7
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080174

    if-ne v2, v3, :cond_8

    .line 142
    const v1, 0x7f100006

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 143
    .end local v1           #resId:I
    :cond_8
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f08017f

    if-ne v2, v3, :cond_9

    .line 144
    const v1, 0x7f100005

    .restart local v1       #resId:I
    #v1=(Integer);
    goto :goto_0

    .line 145
    .end local v1           #resId:I
    :cond_9
    #v1=(Uninit);
    iget v2, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v3, 0x7f080178

    if-ne v2, v3, :cond_a

    .line 146
    const v1, 0x7f10000a

    .restart local v1       #resId:I
    #v1=(Integer);
    goto/16 :goto_0

    .line 148
    .end local v1           #resId:I
    :cond_a
    #v1=(Uninit);
    const/4 v1, -0x1

    .restart local v1       #resId:I
    #v1=(Byte);
    goto/16 :goto_0

    .line 150
    :cond_b
    #v1=(Integer);v2=(Byte);
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    iget v3, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    #v3=(Reference);
    iget v4, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    #v4=(Integer);
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto/16 :goto_1
.end method

.method public getSingularDescription(Landroid/content/Context;Lcom/android/mail/providers/Folder;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "folder"

    .prologue
    .line 156
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    #v1=(Integer);
    const v2, 0x7f08016b

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    .line 157
    const v1, 0x7f0a00a3

    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p2, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v1

    .line 160
    :cond_0
    #v0=(Uninit);v1=(Integer);v2=(Integer);v3=(Uninit);v4=(Uninit);
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v2, 0x7f08016c

    if-ne v1, v2, :cond_1

    .line 161
    const v0, 0x7f0a00a1

    .line 167
    .local v0, resId:I
    :goto_1
    #v0=(Integer);
    const/4 v1, -0x1

    #v1=(Byte);
    if-ne v0, v1, :cond_3

    const-string v1, ""

    #v1=(Reference);
    goto :goto_0

    .line 162
    .end local v0           #resId:I
    :cond_1
    #v0=(Uninit);v1=(Integer);
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    const v2, 0x7f08016a

    if-ne v1, v2, :cond_2

    .line 163
    const v0, 0x7f0a00a2

    .restart local v0       #resId:I
    #v0=(Integer);
    goto :goto_1

    .line 165
    .end local v0           #resId:I
    :cond_2
    #v0=(Uninit);
    const/4 v0, -0x1

    .restart local v0       #resId:I
    #v0=(Byte);
    goto :goto_1

    .line 167
    :cond_3
    #v0=(Integer);v1=(Byte);
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mType:I

    #v0=(Integer);
    return v0
.end method

.method public isBatchUndo()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mBatch:Z

    #v0=(Boolean);
    return v0
.end method

.method public onActionClicked(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 189
    return-void
.end method

.method public onToastBarTimeout(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 193
    return-void
.end method

.method public shouldTakeOnActionClickedPrecedence()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "{"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, " mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, " mCount="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, " mBatch="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-boolean v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mBatch:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, " mType="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mType:I

    #v1=(Integer);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, " mFolder="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 94
    #v1=(Null);
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mCount:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-boolean v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mBatch:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mType:I

    #v0=(Integer);
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/android/mail/ui/ToastBarOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v0=(Reference);
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    return-void

    :cond_0
    #v0=(Boolean);
    move v0, v1

    .line 96
    #v0=(Null);
    goto :goto_0
.end method
