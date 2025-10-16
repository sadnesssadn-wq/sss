.class public Lc/d/a/d/a/a/d/d;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    const v3, 0xffffff

    if-le v0, v3, :cond_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Binder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v3, p0

    check-cast v3, Lc/d/a/d/a/a/d/i;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1
    :cond_2
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    sget v4, Lc/d/a/d/a/a/d/e;->a:I

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Parcelable;

    .line 3
    :goto_0
    check-cast v6, Landroid/os/Bundle;

    invoke-static/range {p2 .. p2}, Lc/d/a/d/a/a/d/e;->a(Landroid/os/Parcel;)V

    check-cast v3, Lc/d/a/d/a/a/o;

    .line 4
    iget-object v0, v3, Lc/d/a/d/a/a/o;->e:Lc/d/a/d/a/a/p;

    iget-object v0, v0, Lc/d/a/d/a/a/p;->a:Lc/d/a/d/a/a/d/w;

    iget-object v1, v3, Lc/d/a/d/a/a/o;->d:Lc/d/a/b/p/m;

    invoke-virtual {v0, v1}, Lc/d/a/d/a/a/d/w;->b(Lc/d/a/b/p/m;)V

    iget-object v0, v3, Lc/d/a/d/a/a/o;->c:Lc/d/a/d/a/a/d/m;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "onCompleteUpdate"

    invoke-virtual {v0, v3, v1}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 5
    :cond_4
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    sget v4, Lc/d/a/d/a/a/d/e;->a:I

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v6

    goto :goto_1

    :cond_5
    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 7
    :goto_1
    check-cast v0, Landroid/os/Bundle;

    invoke-static/range {p2 .. p2}, Lc/d/a/d/a/a/d/e;->a(Landroid/os/Parcel;)V

    check-cast v3, Lc/d/a/d/a/a/o;

    .line 8
    iget-object v1, v3, Lc/d/a/d/a/a/o;->e:Lc/d/a/d/a/a/p;

    iget-object v1, v1, Lc/d/a/d/a/a/p;->a:Lc/d/a/d/a/a/d/w;

    iget-object v4, v3, Lc/d/a/d/a/a/o;->d:Lc/d/a/b/p/m;

    invoke-virtual {v1, v4}, Lc/d/a/d/a/a/d/w;->b(Lc/d/a/b/p/m;)V

    iget-object v1, v3, Lc/d/a/d/a/a/o;->c:Lc/d/a/d/a/a/d/m;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v7, "onRequestInfo"

    invoke-virtual {v1, v7, v4}, Lc/d/a/d/a/a/d/m;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "error.code"

    const/4 v4, -0x2

    .line 9
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    .line 10
    iget-object v3, v3, Lc/d/a/d/a/a/o;->d:Lc/d/a/b/p/m;

    new-instance v5, Lc/d/a/d/a/b/a;

    .line 11
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    invoke-direct {v5, v0}, Lc/d/a/d/a/b/a;-><init>(I)V

    invoke-virtual {v3, v5}, Lc/d/a/b/p/m;->a(Ljava/lang/Exception;)Z

    goto/16 :goto_3

    :cond_6
    iget-object v1, v3, Lc/d/a/d/a/a/o;->d:Lc/d/a/b/p/m;

    iget-object v4, v3, Lc/d/a/d/a/a/o;->g:Lc/d/a/d/a/a/p;

    iget-object v8, v3, Lc/d/a/d/a/a/o;->f:Ljava/lang/String;

    const/4 v3, -0x1

    const-string v7, "version.code"

    .line 13
    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string v7, "update.availability"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v7, "install.status"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const-string v7, "client.version.staleness"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v3, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_2
    move-object v12, v6

    const-string v3, "in.app.update.priority"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    const-string v3, "bytes.downloaded"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v3, "total.bytes.to.download"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v3, "additional.size.required"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    iget-object v3, v4, Lc/d/a/d/a/a/p;->d:Lc/d/a/d/a/a/r;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/File;

    iget-object v3, v3, Lc/d/a/d/a/a/r;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v5, "assetpacks"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lc/d/a/d/a/a/r;->a(Ljava/io/File;)J

    move-result-wide v20

    const-string v3, "blocking.intent"

    .line 15
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/app/PendingIntent;

    const-string v3, "blocking.destructive.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/app/PendingIntent;

    const-string v3, "nonblocking.destructive.intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/PendingIntent;

    .line 16
    new-instance v0, Lc/d/a/d/a/a/a;

    move-object v7, v0

    invoke-direct/range {v7 .. v25}, Lc/d/a/d/a/a/a;-><init>(Ljava/lang/String;IIILjava/lang/Integer;IJJJJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 17
    iget-object v1, v1, Lc/d/a/b/p/m;->a:Lc/d/a/b/p/j0;

    invoke-virtual {v1, v0}, Lc/d/a/b/p/j0;->v(Ljava/lang/Object;)Z

    :goto_3
    return v2
.end method
