.class public Lb/i/e/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/e/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Lb/i/e/k;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lb/i/e/k;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lb/i/e/n;->d:Ljava/util/List;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v0, Lb/i/e/n;->e:Landroid/os/Bundle;

    iput-object v1, v0, Lb/i/e/n;->c:Lb/i/e/k;

    iget-object v3, v1, Lb/i/e/k;->a:Landroid/content/Context;

    iput-object v3, v0, Lb/i/e/n;->a:Landroid/content/Context;

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lb/i/e/k;->a:Landroid/content/Context;

    const/16 v5, 0x1a

    if-lt v2, v5, :cond_0

    iget-object v6, v1, Lb/i/e/k;->q:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    iget-object v4, v1, Lb/i/e/k;->s:Landroid/app/Notification;

    iget-wide v6, v4, Landroid/app/Notification;->when:J

    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->icon:I

    iget v8, v4, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->ledARGB:I

    iget v9, v4, Landroid/app/Notification;->ledOnMS:I

    iget v10, v4, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v6, v7, v9, v10}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x2

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->defaults:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lb/i/e/k;->e:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lb/i/e/k;->f:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lb/i/e/k;->g:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v8, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lb/i/e/k;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget v7, v1, Lb/i/e/k;->i:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10, v10, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    const/16 v6, 0x15

    if-ge v2, v6, :cond_5

    iget-object v7, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v11, v4, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v3, v7, v11}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    :cond_5
    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v7, v1, Lb/i/e/k;->j:I

    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v3, v1, Lb/i/e/k;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/16 v11, 0x18

    const/16 v12, 0x17

    const-string v13, "android.support.allowGeneratedReplies"

    const/16 v14, 0x14

    const/16 v5, 0x1c

    if-eqz v7, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lb/i/e/h;

    if-lt v2, v14, :cond_f

    .line 1
    invoke-virtual {v7}, Lb/i/e/h;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v14

    if-lt v2, v12, :cond_7

    new-instance v12, Landroid/app/Notification$Action$Builder;

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/drawable/Icon;

    move-result-object v14

    goto :goto_6

    :cond_6
    move-object v14, v8

    .line 2
    :goto_6
    iget-object v6, v7, Lb/i/e/h;->j:Ljava/lang/CharSequence;

    .line 3
    iget-object v9, v7, Lb/i/e/h;->k:Landroid/app/PendingIntent;

    .line 4
    invoke-direct {v12, v14, v6, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_8

    :cond_7
    new-instance v12, Landroid/app/Notification$Action$Builder;

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v6

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    .line 5
    :goto_7
    iget-object v9, v7, Lb/i/e/h;->j:Ljava/lang/CharSequence;

    .line 6
    iget-object v14, v7, Lb/i/e/h;->k:Landroid/app/PendingIntent;

    .line 7
    invoke-direct {v12, v6, v9, v14}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 8
    :goto_8
    iget-object v6, v7, Lb/i/e/h;->c:[Lb/i/e/r;

    if-eqz v6, :cond_a

    .line 9
    array-length v9, v6

    new-array v14, v9, [Landroid/app/RemoteInput;

    array-length v15, v6

    if-gtz v15, :cond_9

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v9, :cond_a

    .line 10
    aget-object v15, v14, v6

    invoke-virtual {v12, v15}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 11
    :cond_9
    aget-object v1, v6, v10

    .line 12
    new-instance v1, Landroid/app/RemoteInput$Builder;

    throw v8

    .line 13
    :cond_a
    iget-object v6, v7, Lb/i/e/h;->a:Landroid/os/Bundle;

    if-eqz v6, :cond_b

    .line 14
    new-instance v6, Landroid/os/Bundle;

    .line 15
    iget-object v9, v7, Lb/i/e/h;->a:Landroid/os/Bundle;

    .line 16
    invoke-direct {v6, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    :cond_b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 17
    :goto_a
    iget-boolean v9, v7, Lb/i/e/h;->e:Z

    .line 18
    invoke-virtual {v6, v13, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-lt v2, v11, :cond_c

    .line 19
    iget-boolean v9, v7, Lb/i/e/h;->e:Z

    .line 20
    invoke-virtual {v12, v9}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 21
    :cond_c
    iget v9, v7, Lb/i/e/h;->g:I

    const-string v11, "android.support.action.semanticAction"

    .line 22
    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-lt v2, v5, :cond_d

    .line 23
    iget v5, v7, Lb/i/e/h;->g:I

    .line 24
    invoke-virtual {v12, v5}, Landroid/app/Notification$Action$Builder;->setSemanticAction(I)Landroid/app/Notification$Action$Builder;

    :cond_d
    const/16 v5, 0x1d

    if-lt v2, v5, :cond_e

    .line 25
    iget-boolean v5, v7, Lb/i/e/h;->h:Z

    .line 26
    invoke-virtual {v12, v5}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    .line 27
    :cond_e
    iget-boolean v5, v7, Lb/i/e/h;->f:Z

    const-string v7, "android.support.action.showsUserInterface"

    .line 28
    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v12, v6}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v5, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v12}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_c

    :cond_f
    iget-object v5, v0, Lb/i/e/n;->d:Ljava/util/List;

    iget-object v6, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    .line 29
    sget-object v9, Lb/i/e/o;->a:Ljava/lang/Object;

    invoke-virtual {v7}, Lb/i/e/h;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v9

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v9

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    .line 30
    :goto_b
    iget-object v11, v7, Lb/i/e/h;->j:Ljava/lang/CharSequence;

    .line 31
    iget-object v12, v7, Lb/i/e/h;->k:Landroid/app/PendingIntent;

    .line 32
    invoke-virtual {v6, v9, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance v6, Landroid/os/Bundle;

    .line 33
    iget-object v9, v7, Lb/i/e/h;->a:Landroid/os/Bundle;

    .line 34
    invoke-direct {v6, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 35
    iget-object v9, v7, Lb/i/e/h;->c:[Lb/i/e/r;

    if-eqz v9, :cond_11

    .line 36
    invoke-static {v9}, Lb/i/e/o;->b([Lb/i/e/r;)[Landroid/os/Bundle;

    move-result-object v9

    const-string v11, "android.support.remoteInputs"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 37
    :cond_11
    iget-object v9, v7, Lb/i/e/h;->d:[Lb/i/e/r;

    if-eqz v9, :cond_12

    .line 38
    invoke-static {v9}, Lb/i/e/o;->b([Lb/i/e/r;)[Landroid/os/Bundle;

    move-result-object v9

    const-string v11, "android.support.dataRemoteInputs"

    invoke-virtual {v6, v11, v9}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 39
    :cond_12
    iget-boolean v7, v7, Lb/i/e/h;->e:Z

    .line 40
    invoke-virtual {v6, v13, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_c
    const/16 v5, 0x1a

    const/16 v6, 0x15

    goto/16 :goto_5

    .line 42
    :cond_13
    iget-object v3, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    if-eqz v3, :cond_14

    iget-object v6, v0, Lb/i/e/n;->e:Landroid/os/Bundle;

    invoke-virtual {v6, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_14
    if-ge v2, v14, :cond_15

    iget-boolean v3, v1, Lb/i/e/k;->m:Z

    if-eqz v3, :cond_15

    iget-object v3, v0, Lb/i/e/n;->e:Landroid/os/Bundle;

    const-string v6, "android.support.localOnly"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_15
    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Lb/i/e/k;->k:Z

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/16 v3, 0x15

    if-ge v2, v3, :cond_16

    iget-object v3, v1, Lb/i/e/k;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lb/i/e/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v6, v1, Lb/i/e/k;->t:Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lb/i/e/n;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_16

    iget-object v6, v0, Lb/i/e/n;->e:Landroid/os/Bundle;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v7, "android.people"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_16
    if-lt v2, v14, :cond_17

    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    iget-boolean v6, v1, Lb/i/e/k;->m:Z

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_17
    const/16 v3, 0x15

    if-lt v2, v3, :cond_20

    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v6, v1, Lb/i/e/k;->o:I

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget v6, v1, Lb/i/e/k;->p:I

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v6, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v4, v4, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v6, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    if-ge v2, v5, :cond_18

    iget-object v3, v1, Lb/i/e/k;->c:Ljava/util/ArrayList;

    invoke-static {v3}, Lb/i/e/n;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lb/i/e/k;->t:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Lb/i/e/n;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_d

    :cond_18
    iget-object v3, v1, Lb/i/e/k;->t:Ljava/util/ArrayList;

    :goto_d
    if-eqz v3, :cond_19

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_e

    :cond_19
    iget-object v3, v1, Lb/i/e/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_20

    .line 43
    iget-object v3, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    if-nez v3, :cond_1a

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    :cond_1a
    iget-object v3, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    const-string v4, "android.car.EXTENSIONS"

    .line 44
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1b

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :cond_1b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    :goto_f
    iget-object v12, v1, Lb/i/e/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_1e

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v14, v1, Lb/i/e/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lb/i/e/h;

    .line 45
    sget-object v15, Lb/i/e/o;->a:Ljava/lang/Object;

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v14}, Lb/i/e/h;->a()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v16

    if-eqz v16, :cond_1c

    invoke-virtual/range {v16 .. v16}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v16

    move/from16 v5, v16

    goto :goto_10

    :cond_1c
    const/4 v5, 0x0

    :goto_10
    const-string v10, "icon"

    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v5, v14, Lb/i/e/h;->j:Ljava/lang/CharSequence;

    const-string v10, "title"

    .line 47
    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 48
    iget-object v5, v14, Lb/i/e/h;->k:Landroid/app/PendingIntent;

    const-string v10, "actionIntent"

    .line 49
    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    iget-object v5, v14, Lb/i/e/h;->a:Landroid/os/Bundle;

    if-eqz v5, :cond_1d

    .line 51
    new-instance v5, Landroid/os/Bundle;

    .line 52
    iget-object v10, v14, Lb/i/e/h;->a:Landroid/os/Bundle;

    .line 53
    invoke-direct {v5, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_11

    :cond_1d
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    :goto_11
    iget-boolean v10, v14, Lb/i/e/h;->e:Z

    .line 55
    invoke-virtual {v5, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v10, "extras"

    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    iget-object v5, v14, Lb/i/e/h;->c:[Lb/i/e/r;

    .line 57
    invoke-static {v5}, Lb/i/e/o;->b([Lb/i/e/r;)[Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "remoteInputs"

    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 58
    iget-boolean v5, v14, Lb/i/e/h;->f:Z

    const-string v10, "showsUserInterface"

    .line 59
    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    iget v5, v14, Lb/i/e/h;->g:I

    const-string v10, "semanticAction"

    .line 61
    invoke-virtual {v15, v10, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    invoke-virtual {v7, v12, v15}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    const/16 v5, 0x1c

    const/4 v10, 0x0

    goto :goto_f

    :cond_1e
    const-string v5, "invisible_actions"

    invoke-virtual {v3, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v5, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 63
    iget-object v5, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    if-nez v5, :cond_1f

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    :cond_1f
    iget-object v5, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    .line 64
    invoke-virtual {v5, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v3, v0, Lb/i/e/n;->e:Landroid/os/Bundle;

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_20
    if-lt v2, v11, :cond_21

    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    iget-object v4, v1, Lb/i/e/k;->n:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_21
    const/16 v3, 0x1a

    if-lt v2, v3, :cond_22

    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-object v3, v1, Lb/i/e/k;->q:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_22
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_23

    iget-object v3, v1, Lb/i/e/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/i/e/q;

    iget-object v5, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    .line 65
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/app/Person$Builder;

    invoke-direct {v4}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v4, v8}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v4

    .line 66
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    goto :goto_12

    :cond_23
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_24

    iget-object v2, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    iget-boolean v1, v1, Lb/i/e/k;->r:Z

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAllowSystemGeneratedContextualActions(Z)Landroid/app/Notification$Builder;

    iget-object v1, v0, Lb/i/e/n;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    :cond_24
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lb/f/c;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {v0, v2}, Lb/f/c;-><init>(I)V

    invoke-virtual {v0, p0}, Lb/f/c;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Lb/f/c;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/i/e/q;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/i/e/q;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
