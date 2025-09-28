# 做事行动器 - 决策工具

一个基于命运的决策工具，让命运决定你的选择。

🔗 **GitHub 仓库**: [https://github.com/SpiritMark/zuoshi-action](https://github.com/SpiritMark/zuoshi-action)


## 项目结构

```
/Users/bytedance/zuoshi_action/
├── index.html      # 主页面文件
├── package.json    # 项目配置
├── vercel.json     # Vercel 部署配置
└── README.md       # 说明文档
```

## 本地预览

你可以在本地打开 `index.html` 文件来预览应用，或者使用 Vercel CLI 进行本地开发：

```bash
# 安装依赖（如果需要）
npm install

# 本地开发预览
npm run dev
```

## 部署到 Vercel

### 方式一：使用 GitHub 集成（推荐，已完成代码推送）

✅ **代码已推送到 GitHub**: [https://github.com/SpiritMark/zuoshi-action](https://github.com/SpiritMark/zuoshi-action)

**部署步骤**:
1. 访问 [vercel.com](https://vercel.com) 并登录
2. 点击 "Import Project"
3. 选择 "Import Git Repository"
4. 连接你的 GitHub 账号并选择 `zuoshi-action` 仓库
5. Vercel 会自动检测这是一个静态站点并进行部署
6. 部署完成后，你将获得一个公开访问的 URL

### 方式二：使用 Vercel CLI

1. **登录 Vercel**
   ```bash
   vercel login
   ```

2. **部署到生产环境**
   ```bash
   vercel --prod
   ```

3. **设置自定义域名（可选）**
   ```bash
   vercel domain add your-domain.com
   ```

### 方式三：手动上传

1. 构建项目（如果需要）
2. 将 `index.html` 文件上传到 Vercel 的静态站点托管

## 功能特点

- 🎲 随机决策生成
- 🕐 实时北京时间显示
- ✨ 精美的玻璃拟态设计
- 📱 响应式布局
- 🚀 流畅的动画效果

## 自定义配置

你可以在 `index.html` 文件中修改 `decisions` 数组来添加更多的决策选项：

```javascript
const decisions = [
    {
        text: "去做！现在就是行动的最佳时机，机会稍纵即逝。",
        icon: "🚀"
    },
    {
        text: "去做！你的直觉是正确的，跟随内心的指引。",
        icon: "💫"
    },
    {
        text: "不做。有时候说不也是一种智慧的选择。",
        icon: "🧠"
    },
    // 添加更多决策选项...
];
```

## 许可证

MIT License
