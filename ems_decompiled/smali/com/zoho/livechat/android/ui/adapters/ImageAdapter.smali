.class public Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;
.super Lb/m/d/g0;
.source ""

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# instance fields
.field private activity:Landroid/app/Activity;

.field private imageFragmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/zoho/livechat/android/ui/fragments/ImageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private imagesidlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public isbottomvisible:Z

.field private listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

.field private mCurrentView:Lcom/zoho/livechat/android/ui/fragments/ImageFragment;


# direct methods
.method public constructor <init>(Lb/m/d/y;Landroid/app/Activity;Ljava/util/ArrayList;Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/m/d/y;",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/m/d/g0;-><init>(Lb/m/d/y;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public changeList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/m/d/g0;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Lc/a/a/a/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->listener:Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->newInstance(Ljava/lang/String;Lcom/zoho/livechat/android/ui/listener/PreviewImageListener;)Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public setBottomVisible(Z)V
    .locals 2

    :try_start_0
    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_0

    :try_start_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    check-cast p1, Lb/b/k/h;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->z()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    check-cast p1, Lb/b/k/h;

    invoke-virtual {p1}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->f()V

    :goto_0
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->setBottomVisibleWithoutAnim(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->mCurrentView:Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    iget-boolean v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    invoke-virtual {p1, v0}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->setBottomVisible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public setBottomVisibleWithoutAnim(Z)V
    .locals 2

    :try_start_0
    iput-boolean p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Lb/b/k/h;

    invoke-virtual {v0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->z()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    check-cast v0, Lb/b/k/h;

    invoke-virtual {v0}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->f()V

    :goto_0
    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->mCurrentView:Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->setBottomVisibleWithoutAnim(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imageFragmentMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->isbottomvisible:Z

    invoke-virtual {v0, v1}, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->setBottomVisibleWithoutAnim(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    iput-object p3, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->mCurrentView:Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    return-void
.end method

.method public shareImage()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->mCurrentView:Lcom/zoho/livechat/android/ui/fragments/ImageFragment;

    iget-object v2, v2, Lcom/zoho/livechat/android/ui/fragments/ImageFragment;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->getInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/zoho/livechat/android/provider/CursorUtility;->INSTANCE:Lcom/zoho/livechat/android/provider/CursorUtility;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM SIQ_MESSAGES WHERE _id = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->imagesidlist:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/zoho/livechat/android/provider/CursorUtility;->executeRawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zoho/livechat/android/models/SalesIQMessage;

    invoke-direct {v1, v0}, Lcom/zoho/livechat/android/models/SalesIQMessage;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getAttachmentInfo()Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zoho/livechat/android/models/SalesIQMessageAttachment;->getfName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/zoho/livechat/android/utils/ImageUtils;->INSTANCE:Lcom/zoho/livechat/android/utils/ImageUtils;

    invoke-virtual {v1}, Lcom/zoho/livechat/android/models/SalesIQMessage;->getStime()J

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/zoho/livechat/android/utils/ImageUtils;->getFileFromDisk(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/jpeg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".siqfileprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lb/i/f/b;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/adapters/ImageAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/zoho/livechat/android/R$string;->livechat_messages_shareimage:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
